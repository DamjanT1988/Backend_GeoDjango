from django.contrib import admin
from django.contrib.auth.models import User
from django.contrib.auth.admin import UserAdmin
from auth_app_vm.models import User_additional, Audit_log, User_payment

class UserAdditionalInline(admin.StackedInline):
    model = User_additional
    can_delete = False
    fields = ('organization_name', 'organization_number', 'role', 'job_title', 'department', 'phone_number', 'account_type',)
    readonly_fields = ('account_type',)

    def account_type(self, obj):
        return "Company Account" if obj.account_type else "Individual Account"
    account_type.short_description = "Kontotyp"

class UserPaymentInline(admin.StackedInline):
    model = User_payment
    can_delete = False
    extra = 0

class AuditInline(admin.StackedInline):
    model = Audit_log
    can_delete = False
    extra = 0

class CustomUserAdmin(UserAdmin):
    inlines = (UserAdditionalInline, UserPaymentInline, AuditInline)

    def get_inline_instances(self, request, obj=None):
        inlines = super(CustomUserAdmin, self).get_inline_instances(request, obj)
        if obj is None:
            return inlines

        try:
            user_additional = User_additional.objects.get(user=obj)
            # Only include UserPaymentInline if account_type is True
            if not user_additional.account_type:
                inlines = [inline for inline in inlines if not isinstance(inline, UserPaymentInline)]
        except User_additional.DoesNotExist:
            pass

        return inlines


# Re-register UserAdmin
admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)
