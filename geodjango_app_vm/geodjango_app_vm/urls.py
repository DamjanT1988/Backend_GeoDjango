from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home
from API_REST_app_vm.views import SpeciesCentralDatabankList, SpeciesUserDatabankList
from auth_app_vm.views import CreateUserView, UserRetrieveUpdateView, LoginView, LogoutView
import debug_toolbar

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'), 
    path('api/user/create', CreateUserView.as_view(), name='create_user'),
    path('api/user/login/', LoginView.as_view(), name='token_obtain_pair'),
    path('api/user/logout/', LogoutView.as_view(), name='logout'),
    path('api/user/info/', UserRetrieveUpdateView.as_view(), name='user-info'), #GET and PUT user info, user ID by JWT
    path('api/species/', SpeciesCentralDatabankList.as_view(), name='species-list'), #get all central species
    path('api/species/<int:user_id>/', SpeciesUserDatabankList.as_view(), name='species-list'), #get user db species
    #path('api/project/get/<int:project_id>/', .as_view(), name='get-project'), #get project info
    #path('api/project/post/<int:project_id>/', .as_view(), name='post-project'), #add project info
    #path('api/project/update/<int:project_id>/', .as_view(), name='update-project'), #update project info
    #path('api/project/delete/<int:project_id>/', .as_view(), name='delete-project'), #delete project
    #path('api/transfer/mobile<int:project_id>/', .as_view(), name='transfer-mobile'), #transfer to mobile
    #path('api/transfer/web<int:project_id>/', .as_view(), name='transfer-web'), #transfer to web
]

urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]