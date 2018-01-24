from django.contrib import admin

from apps.medium.models import VideoList, Video

admin.site.register(Video)
admin.site.register(VideoList)
# Register your models here.
