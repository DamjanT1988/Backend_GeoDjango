"""
URL patterns for the Django application.

This file defines the URL patterns for the different views and endpoints in the application.
"""

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
from project_app_vm import views
import debug_toolbar
from django.conf.urls.static import static

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'), 
    #fetch user
    path('api/user/create/', CreateUserView.as_view(), name='create_user'),
    path('api/user/login/', LoginView.as_view(), name='token_obtain_pair'),
    path('api/user/logout/', LogoutView.as_view(), name='logout'),
    path('api/user/reset/', PasswordResetView.as_view(), name='reset-password'),
    path('api/user/info/', UserRetrieveUpdateView.as_view(), name='user-info'), 
    path('api/user/payment/create/', UserPaymentCreateView.as_view(), name='create-payment'),
    path('api/user/payment/info/', UserPaymentView.as_view(), name='user-payment'),
    path('api/user/delete/<int:user_id>/', UserDeleteView.as_view(), name='delete-user'),
    path('api/user/validate/', PasswordValidationView.as_view(), name='validate-password'),
    #fetch species
    path('api/species/', SpeciesCentralDatabankList.as_view(), name='species-list'), 
    path('api/species/user/', SpeciesUserDatabankList.as_view(), name='species-list'), 
    path('api/species/user/create/', SpeciesUserDatabankCreate.as_view(), name='species-user-create'),
    #fetch projects
    path('api/projects/', ProjectListCreateView.as_view(), name='project-list'),
    path('api/projects/<int:pk>/', ProjectDetailView.as_view(), name='project-detail'),
    #create files
    path('api/projects/get/<str:userID>/<str:projectID>/file', views.get_geojson, name='get_geojson'),
    path('api/projects/post/<str:userID>/<str:projectID>/file', views.save_geojson, name='save_geojson'),
    path('api/projects/image/save/', views.save_project_image, name='save_project_image'),
    path('api/projects/<int:project_id>/image/', views.get_project_image, name='get_project_image'),
    path('api/projects/image/delete/<int:image_id>/', views.delete_project_image, name='delete_project_image'),
    #fecth reports
    path('api/reports/', ReportList.as_view(), name='report-list'), 
    path('api/reports/<int:pk>/', ReportDetail.as_view(), name='report-detail'),
    #aggregate data
    path('api/form/model/<str:model_name>/', DynamicListView.as_view(), name='dynamic-list'),
    path('api/form/all/', AggregatedDataViewAll.as_view(), name='aggregate-data-all'),
    path('api/form/all/other/', AggregatedDataViewOther.as_view(), name='aggregate-data-other'),
    path('api/form/all/mark/', AggregatedDataViewMark.as_view(), name='aggregate-data-mark'),
    path('api/form/all/sotvatten/', AggregatedDataViewSotvatten.as_view(), name='aggregate-data-sotvatten'),
    path('api/form/all/hav/', AggregatedDataViewHav.as_view(), name='aggregate-data-hav'),
    #transfer data
    path('api/transfer/<int:pk>/', ProjectTransferView.as_view(), name='transfer-project'), 
    #path('api/transfer/create/', ProjectTransferView.as_view(), name='transfer-project-create'),
    #file creation
    path('api/file/geojson/', GeoJSONAPIView.as_view(), name='geojson_api'),
    path('download/shapefile/<int:data_id>/', download_shapefile, name='download_shapefile'),
    path('download/geopackfile/<int:data_id>/', download_geopackfile, name='download_geopackfile'),
    path('download/gmlfile/<int:data_id>/', download_gmlfile, name='download_gmlfile'),
    path('download/geojsonfile/<int:data_id>/', download_geojsonfile, name='download_geojsonfile'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]
