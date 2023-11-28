"""
from django.contrib import admin
from .models import User_additional

admin.site.register(User_additional)
"""

from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
from .models import User_additional

class UserAdditionalInline(admin.StackedInline):
    model = User_additional
    can_delete = False

class CustomUserAdmin(UserAdmin):
    inlines = (UserAdditionalInline, )

# Re-register UserAdmin
admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)
