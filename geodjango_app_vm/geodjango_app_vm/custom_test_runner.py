from django.test.runner import DiscoverRunner

class CustomTestRunner(DiscoverRunner):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Set the directory where you want to save the reports
        self.test_output_dir = 'geodjango_app_vm/tests/reports'

    # Override any methods as needed to customize the test report handling
