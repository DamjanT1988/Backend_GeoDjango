# species_app_vm/management/commands/fetch_and_save_species.py

from django.core.management.base import BaseCommand
from species_app_vm.tests import fetch_and_save_species_data

class Command(BaseCommand):
    help = 'Fetches species data from an API and stores it in the database'

    def handle(self, *args, **kwargs):
        api_url = 'https://api.artdatabanken.se/information/v1/speciesdataservice/v1/speciesdata?taxa=1'  # Replace with your actual API URL

        if fetch_and_save_species_data(api_url):
            self.stdout.write(self.style.SUCCESS('Successfully saved species data'))
        else:
            self.stdout.write(self.style.ERROR('Failed to fetch data'))
