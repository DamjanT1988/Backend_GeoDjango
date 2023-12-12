from django.test import SimpleTestCase
from django.urls import reverse, resolve
from geodjango_app_vm.views import home
from species_app_vm.views import SpeciesCentralDatabankList, SpeciesUserDatabankList
from auth_app_vm.views import CreateUserView, UserRetrieveUpdateView, LoginView, LogoutView
from project_app_vm.views import ProjectListCreateView, ProjectDetailView
from report_app_vm.views import ReportList, ReportDetail
from transfer_app_vm.views import ProjectTransferView
from survey_app_vm.views import DynamicListView, AggregatedDataViewAll, AggregatedDataViewOther, AggregatedDataViewMark, AggregatedDataViewSotvatten, AggregatedDataViewHav

class TestUrls(SimpleTestCase):

    def test_home_url_resolves(self):
        url = reverse('home')
        self.assertEqual(resolve(url).func, home)

    def test_species_central_databank_list_url_resolves(self):
        url = reverse('species-list')
        self.assertEqual(resolve(url).func.view_class, SpeciesUserDatabankList)

    def test_create_user_url_resolves(self):
        url = reverse('create_user')
        self.assertEqual(resolve(url).func.view_class, CreateUserView)

    def test_create_user_url_resolves(self):
        url = reverse('create_user')
        self.assertEqual(resolve(url).func.view_class, CreateUserView)

    def test_species_user_databank_list_url_resolves(self):
        url = reverse('species-list')
        self.assertEqual(resolve(url).func.view_class, SpeciesUserDatabankList)

    def test_create_user_url_resolves(self):
        url = reverse('create_user')
        self.assertEqual(resolve(url).func.view_class, CreateUserView)

    def test_login_url_resolves(self):
        url = reverse('token_obtain_pair')
        self.assertEqual(resolve(url).func.view_class, LoginView)

    def test_logout_url_resolves(self):
        url = reverse('logout')
        self.assertEqual(resolve(url).func.view_class, LogoutView)

    def test_user_retrieve_update_view_url_resolves(self):
        url = reverse('user-info')
        self.assertEqual(resolve(url).func.view_class, UserRetrieveUpdateView)

    def test_project_list_create_view_url_resolves(self):
        url = reverse('project-list')
        self.assertEqual(resolve(url).func.view_class, ProjectListCreateView)

    def test_project_detail_view_url_resolves(self):
        url = reverse('project-detail', args=[1])  # Assuming pk=1 for test
        self.assertEqual(resolve(url).func.view_class, ProjectDetailView)

    def test_report_list_url_resolves(self):
        url = reverse('report-list')
        self.assertEqual(resolve(url).func.view_class, ReportList)

    def test_report_detail_url_resolves(self):
        url = reverse('report-detail', args=[1])  # Assuming pk=1 for test
        self.assertEqual(resolve(url).func.view_class, ReportDetail)

    def test_dynamic_list_view_url_resolves(self):
        url = reverse('dynamic-list', args=['model_name'])  # Replace 'model_name' with actual model name
        self.assertEqual(resolve(url).func.view_class, DynamicListView)

    def test_aggregated_data_view_all_url_resolves(self):
        url = reverse('aggregate-data-all')
        self.assertEqual(resolve(url).func.view_class, AggregatedDataViewAll)

    def test_project_transfer_view_url_resolves(self):
        url = reverse('transfer-project', args=[1])  # Assuming pk=1 for test
        self.assertEqual(resolve(url).func.view_class, ProjectTransferView)

    def test_aggregated_data_view_other_url_resolves(self):
        url = reverse('aggregate-data-other')
        self.assertEqual(resolve(url).func.view_class, AggregatedDataViewOther)

    def test_aggregated_data_view_mark_url_resolves(self):
        url = reverse('aggregate-data-mark')
        self.assertEqual(resolve(url).func.view_class, AggregatedDataViewMark)

    def test_aggregated_data_view_sotvatten_url_resolves(self):
        url = reverse('aggregate-data-sotvatten')
        self.assertEqual(resolve(url).func.view_class, AggregatedDataViewSotvatten)

    def test_aggregated_data_view_hav_url_resolves(self):
        url = reverse('aggregate-data-hav')
        self.assertEqual(resolve(url).func.view_class, AggregatedDataViewHav)