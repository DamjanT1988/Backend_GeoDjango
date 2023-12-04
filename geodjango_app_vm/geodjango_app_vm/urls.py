from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home
from API_REST_app_vm.views import SpeciesCentralDatabankList, SpeciesUserDatabankList
from auth_app_vm.views import CreateUserView, UserRetrieveUpdateView, LoginView, LogoutView
from project_app_vm.views import ProjectListCreateView, ProjectDetailView
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
]

urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]