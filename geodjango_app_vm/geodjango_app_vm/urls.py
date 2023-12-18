from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home
from species_app_vm.views import *
from auth_app_vm.views import *
from project_app_vm.views import *
from report_app_vm.views import *
from transfer_app_vm.views import *
from survey_app_vm.views import *
from filecreation_app_vm.views import *
import debug_toolbar

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'), 
#fetch user
    path('api/user/create', CreateUserView.as_view(), name='create_user'),
    path('api/user/login/', LoginView.as_view(), name='token_obtain_pair'),
    path('api/user/logout/', LogoutView.as_view(), name='logout'),
    path('api/user/info/', UserRetrieveUpdateView.as_view(), name='user-info'), #GET and PUT user info, user ID by JWT
    path('api/user/payment/', UserPaymentCreateView.as_view(), name='create-payment'),
    path('api/user/delete/<int:user_id>/', UserDeleteView.as_view(), name='delete-user'),
#fetch species
    path('api/species/', SpeciesCentralDatabankList.as_view(), name='species-list'), #get all central species
    path('api/species/user/', SpeciesUserDatabankList.as_view(), name='species-list'), #get user db species
#fetch projects
    path('api/projects/', ProjectListCreateView.as_view(), name='project-list'),
    path('api/projects/<int:pk>/', ProjectDetailView.as_view(), name='project-detail'),
#fecth reports
    path('api/reports/', ReportList.as_view(), name='report-list'), #GET all reports, POST a new report
    path('api/reports/<int:pk>/', ReportDetail.as_view(), name='report-detail'),
#aggregate data
    path('api/form/model/<str:model_name>/', DynamicListView.as_view(), name='dynamic-list'),
    path('api/form/all/', AggregatedDataViewAll.as_view(), name='aggregate-data-all'),
    path('api/form/all/other/', AggregatedDataViewOther.as_view(), name='aggregate-data-other'),
    path('api/form/all/mark/', AggregatedDataViewMark.as_view(), name='aggregate-data-mark'),
    path('api/form/all/sotvatten/', AggregatedDataViewSotvatten.as_view(), name='aggregate-data-sotvatten'),
    path('api/form/all/hav/', AggregatedDataViewHav.as_view(), name='aggregate-data-hav'),
#transfer data
    path('api/transfer/<int:pk>/', ProjectTransferView.as_view(), name='transfer-project'), # GET a project, PUT a project
    #path('api/transfer/create/', ProjectTransferView.as_view(), name='transfer-project-create'), # POST a new project
#file creation
    path('api/geojson/', GeoJSONAPIView.as_view(), name='geojson_api'),
    path('download/shapefile/<int:data_id>/', download_shapefile, name='download_shapefile'),
]

urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]