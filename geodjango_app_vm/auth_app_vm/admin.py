from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
from auth_app_vm.models import User_additional, Audit_log, User_payment

class UserAdditionalInline(admin.StackedInline):
    model = User_additional
    can_delete = False

class UserPaymentInline(admin.StackedInline):
    model = User_payment
    can_delete = False

class AuditInline(admin.StackedInline):
    model = Audit_log
    can_delete = False

class CustomUserAdmin(UserAdmin):
    inlines = (UserAdditionalInline, UserPaymentInline, AuditInline)


# Re-register UserAdmin
admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)
