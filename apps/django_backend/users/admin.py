from django.contrib import admin
from django.contrib.auth import admin as auth_admin
from django.contrib.auth import get_user_model
from django.utils.translation import gettext_lazy as _
from import_export.admin import ImportExportModelAdmin

from users.models import Traveller, LoyaltyTier

User = get_user_model()


@admin.register(User)
class UserAdmin(ImportExportModelAdmin, auth_admin.UserAdmin):
    fieldsets = (
        (None, {"fields": ("email", "password")}),
        (
            _("Permissions"),
            {
                "fields": (
                    "is_active",
                    "is_staff",
                    "is_superuser",
                    "groups",
                    "user_permissions",
                    "traveller",
                ),
            },
        ),
        (_("Important dates"), {"fields": ("last_login", "date_joined")}),
    )
    add_fieldsets = (
        (
            None,
            {
                "classes": ("wide",),
                "fields": ("email", "password1", "password2"),
            },
        ),
    )
    list_display = ("id", "email", "is_superuser")
    ordering = ("email",)
    search_fields = ("email",)


@admin.register(Traveller)
class TravellerAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    list_display = (
        "id",
        "first_name",
        "middle_name",
        "last_name",
        "salutation",
        "avatar",
        "gender",
        "passenger_type",
        "frequent_flyer_number",
        "street",
        "city",
        "postal_code",
        "country",
    )

@admin.register(LoyaltyTier)
class LoyaltyTierAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'minimum_miles')
    search_fields = ('name',)
