from django.core.management.base import BaseCommand
from species_app_vm.tests import fetch_and_save_species_data

class Command(BaseCommand):
    help = 'Fetches species data from an API and stores it in the database'

    def add_arguments(self, parser):
        parser.add_argument('num_calls', type=int, help='The number of times to call the API')

    def handle(self, *args, **options):
        num_calls = options['num_calls']
        base_url = 'https://api.artdatabanken.se/information/v1/speciesdataservice/v1/speciesdata?taxa='

        for i in range(1, num_calls + 1):
            api_url = f"{base_url}{i}"  # Increase taxa number per API call

            if fetch_and_save_species_data(api_url):
                self.stdout.write(self.style.SUCCESS(f'Successfully saved species data for taxa {i}'))
            else:
                self.stdout.write(self.style.ERROR(f'Failed to fetch data for taxa {i}'))

#python manage.py commandapitest 10 - makes 10 API calls