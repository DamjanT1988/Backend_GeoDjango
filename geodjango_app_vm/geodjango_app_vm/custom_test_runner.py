import xmlrunner
from django.test.runner import DiscoverRunner

class CustomTestRunner(DiscoverRunner):
    def run_suite(self, suite, **kwargs):
        """
        Run the test suite.
        """
        test_runner = xmlrunner.XMLTestRunner(output='geodjango_app_vm/tests/test_reports')
        return test_runner.run(suite)
