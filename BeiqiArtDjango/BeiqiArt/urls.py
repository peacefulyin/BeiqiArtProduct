"""BeiqiArt URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls import url
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from django.views.static import serve
from rest_framework.routers import DefaultRouter

from BeiqiArt.settings import MEDIA_ROOT
from apps.article import views as article_views
from apps.course import views as course_views
from apps.user import views as user_views
from apps.medium import views as video_views

router = DefaultRouter(trailing_slash=False)
router.register(r'user', user_views.UserViewSet)
router.register(r'teacher', user_views.TeacherViewSet)
router.register(r'student', user_views.StudentViewSet)
router.register(r'parent', user_views.ParentViewSet)
router.register(r'course', course_views.CourseViewSet)
router.register(r'courseSchedule', course_views.CourseScheduleViewSet)
router.register(r'article', article_views.ArticleViewSet, base_name='article')
router.register(r'videoList', video_views.VideoListViewSet)
router.register(r'enroll', course_views.EnrollViewSet)


urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
