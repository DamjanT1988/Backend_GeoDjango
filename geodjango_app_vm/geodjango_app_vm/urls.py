from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home
from auth_app_vm.views import CreateUserView, LoginView
import debug_toolbar

urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'), 
    path('api/users/create', CreateUserView.as_view(), name='create_user'),
    path('api/token/', LoginView.as_view(), name='token_obtain_pair'),
]

urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]