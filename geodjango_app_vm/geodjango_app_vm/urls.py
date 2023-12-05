from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home
from species_app_vm.views import SpeciesCentralDatabankList, SpeciesUserDatabankList
from auth_app_vm.views import CreateUserView, UserRetrieveUpdateView, LoginView, LogoutView
from project_app_vm.views import ProjectListCreateView, ProjectDetailView
from report_app_vm.views import ReportList, ReportDetail
from transfer_app_vm.views import ProjectTransferView
from survey_app_vm.views import DynamicListView, AggregatedDataViewOther
import debug_toolbar

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'), 
    path('api/user/create', CreateUserView.as_view(), name='create_user'),
    path('api/user/login/', LoginView.as_view(), name='token_obtain_pair'),
    path('api/user/logout/', LogoutView.as_view(), name='logout'),
    path('api/user/info/', UserRetrieveUpdateView.as_view(), name='user-info'), #GET and PUT user info, user ID by JWT
    path('api/species/', SpeciesCentralDatabankList.as_view(), name='species-list'), #get all central species
    path('api/species/user/', SpeciesUserDatabankList.as_view(), name='species-list'), #get user db species
    path('api/projects/', ProjectListCreateView.as_view(), name='project-list'),
    path('api/projects/<int:pk>/', ProjectDetailView.as_view(), name='project-detail'),
    path('api/reports/', ReportList.as_view(), name='report-list'), #GET all reports, POST a new report
    path('api/reports/<int:pk>/', ReportDetail.as_view(), name='report-detail'),
    path('api/form/<str:model_name>/', DynamicListView.as_view(), name='dynamic-list'),
    path('api/form/all/other/', AggregatedDataViewOther.as_view(), name='aggregate-data-other'),
    path('api/transfer/<int:pk>/', ProjectTransferView.as_view(), name='transfer-project'), # GET a project, PUT a project
    #path('api/transfer/create/', ProjectTransferView.as_view(), name='transfer-project-create'), # POST a new project
]

urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]