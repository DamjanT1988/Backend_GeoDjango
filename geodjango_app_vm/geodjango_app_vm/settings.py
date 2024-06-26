"""
Django settings for the GeoDjango application.

This file contains the configuration settings for the GeoDjango application.
It includes settings related to security, database, authentication, middleware,
internationalization, static files, and more.

For more information on Django settings, visit:
https://docs.djangoproject.com/en/4.2/topics/settings/
"""

from pathlib import Path
from datetime import timedelta
import os


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = "django-insecure-1tiw*jt!73vryohvmrd&4zbheg-4=ot1q=tf4-!cr5#tq9fi1_"

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

MEDIA_ROOT = os.path.join(BASE_DIR, 'project_files')
MEDIA_URL = '/project_files/'

# Path to GDAL library
GDAL_LIBRARY_PATH = 'C:\\OSGeo4W\\bin\\gdal308.dll'  # Update the path and file name as per your GDAL installation

# Path to GEOS library
GEOS_LIBRARY_PATH = 'C:\\OSGeo4W\\bin\\geos_c.dll'  # Update the path and file name as per your GEOS installation

ALLOWED_HOSTS = []

APPEND_SLASH=False 

DATA_UPLOAD_MAX_MEMORY_SIZE = 110485760  # 100MB in bytes


# Reset password
EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'
EMAIL_HOST = 'smtp.your-email-provider.com'  # e.g., 'smtp.gmail.com' for Gmail
EMAIL_PORT = 587
EMAIL_USE_TLS = True
EMAIL_HOST_USER = 'your-email@example.com'
EMAIL_HOST_PASSWORD = 'your-email-password'


TEST_RUNNER = 'geodjango_app_vm.custom_test_runner.CustomTestRunner'

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.TokenAuthentication',
        "rest_framework_simplejwt.authentication.JWTAuthentication",
    ],
}

SIMPLE_JWT = {
    'ACCESS_TOKEN_LIFETIME': timedelta(days=10),
    'REFRESH_TOKEN_LIFETIME': timedelta(days=1),
    'ROTATE_REFRESH_TOKENS': False,
}

# Application definition

INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    #own apps
    "species_app_vm",
    "auth_app_vm",
    "project_app_vm",
    "report_app_vm",
    "transfer_app_vm",
    "survey_app_vm",
    "filecreation_app_vm",
    "rest_framework_gis",
    "rest_framework_simplejwt.token_blacklist",
    "rest_framework",
    "debug_toolbar",
]

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
    #
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    "corsheaders.middleware.CorsMiddleware"
    #"debug_toolbar.middleware.DebugToolbarMiddleware",
]

INTERNAL_IPS = [
    '127.0.0.1',
    '192.168.0.1'
]

CORS_ORIGIN_WHITELIST = [
    'http://localhost:3000',
    'http://localhost:8000',]

ROOT_URLCONF = "geodjango_app_vm.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "geodjango_app_vm.wsgi.application"

# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.contrib.gis.db.backends.postgis',
        'NAME': 'SpatialDBdev2',
        'USER': 'postgres',
        'PASSWORD': 'bu',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.MinimumLengthValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.CommonPasswordValidator",
    },
    {
        "NAME": "django.contrib.auth.password_validation.NumericPasswordValidator",
    },
]

# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = "sv-se"

USE_I18N = True

TIME_ZONE = 'Europe/Stockholm'

USE_I18N = True

USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

STATIC_URL = "static/"

# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"
