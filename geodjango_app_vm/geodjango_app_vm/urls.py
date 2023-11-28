from django.contrib import admin
from django.urls import include, path
from geodjango_app_vm.views import home  # Replace 'your_app' with the name of the app containing your view


urlpatterns = [
    path("admin/", admin.site.urls),
    path('', home, name='home'),  # Add this line
    
]

import debug_toolbar
urlpatterns += [
    path('__debug__/', include(debug_toolbar.urls)),
]