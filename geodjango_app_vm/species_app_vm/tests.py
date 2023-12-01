import requests
from .models import SpeciesCentralDatabank

def fetch_and_save_species_data(api_url):
    headers = {
        'Ocp-Apim-Subscription-Key': 'd0e4154247e34467a94d8a97183354ec'
    }

    try:
        response = requests.get(api_url, headers=headers)
        response.raise_for_status()  # Raises HTTPError for bad requests

        data = response.json()  # This is a list of JSON objects
        for item in data:
            SpeciesCentralDatabank.objects.create(
                #LÄGG TILL FLER FÄLT - taxonID
                species_name_common=item.get('swedishName', 'Unknown'),  # Example field
                species_data=item,  # Storing the entire JSON object
                source=api_url  # Example source field
            )
        return True

    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")
        return False
