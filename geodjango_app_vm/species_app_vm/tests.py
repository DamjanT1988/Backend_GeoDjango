import requests
from .models import SpeciesCentralDatabank

def fetch_and_save_species_data(api_url, num_calls=1):
    """
    Fetches species data from the specified API URL and saves it to the SpeciesCentralDatabank model.

    Args:
        api_url (str): The URL of the API to fetch species data from.
        num_calls (int): The number of times to call the API.

    Returns:
        bool: True if the species data was fetched and saved successfully, False otherwise.
    """
    headers = {
        'Ocp-Apim-Subscription-Key': 'd0e4154247e34467a94d8a97183354ec'
    }

    try:
        for _ in range(num_calls):
            response = requests.get(api_url, headers=headers)
            response.raise_for_status()  # Raises HTTPError for bad requests

            data = response.json()  # This is a list of JSON objects
            for item in data:
                SpeciesCentralDatabank.objects.create(
                    taxon_id=item.get('taxonId', None),  # Example field
                    latin_name=item.get('scientificName', 'Unknown'),  # Example field
                    species_name_common=item.get('swedishName', 'Unknown'),  # Example field
                    species_data=item,  # Storing the entire JSON object
                    source=api_url  # Example source field
                )
        return True

    except requests.exceptions.RequestException as e:
        print(f"An error occurred: {e}")
        return False