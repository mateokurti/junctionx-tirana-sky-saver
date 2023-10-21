from django.contrib.auth import get_user_model
from django.contrib.auth.backends import ModelBackend

UserAccount = get_user_model()


class EmailAuthenticationBackend(ModelBackend):
    def authenticate(self, request, username: str | None = None, password=None, **kwargs):
        if username is None:
            username = kwargs.get(UserAccount.USERNAME_FIELD)
        if username is None or password is None:
            return None
        try:
            # Allow for username, email, or phone number login.
            # if "@" in username:
            user = UserAccount.objects.get(email=username)
        except UserAccount.DoesNotExist:
            UserAccount().set_password(password)
        else:
            if user.check_password(password) and self.user_can_authenticate(user):
                return user

    def get_user(self, user_id):
        try:
            # Always prefetch groups with the users to make it always available when checking permissions.
            user = UserAccount._default_manager.get(pk=user_id)
        except UserAccount.DoesNotExist:
            return None
        return user if self.user_can_authenticate(user) else None
