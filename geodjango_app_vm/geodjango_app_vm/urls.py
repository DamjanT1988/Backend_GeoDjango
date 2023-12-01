from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home
from API_REST_app_vm.views import SpeciesCentralDatabankList, SpeciesUserDatabankList
from auth_app_vm.views import CreateUserView, LoginView, LogoutView
import debug_toolbar

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'), 
    path('api/users/create', CreateUserView.as_view(), name='create_user'),
    path('api/login/', LoginView.as_view(), name='token_obtain_pair'),
    path('api/logout/', LogoutView.as_view(), name='logout'),
    path('api/species/central', SpeciesCentralDatabankList.as_view(), name='species-list'),
    path('api/species/user/<int:user_id>/', SpeciesUserDatabankList.as_view(), name='species-list'),
]

urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]