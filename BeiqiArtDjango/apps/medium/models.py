from django.db import models

from apps.user.models import User


class Video(models.Model):
    name = models.CharField(max_length=30)
    link = models.CharField(max_length=200)
    describe = models.TextField(null=True, blank=True)
    image = models.ImageField(null=True, blank=True)
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = '视频'
        verbose_name_plural = '视频'
        db_table = 'video'

    def __str__(self):
        return self.name


class VideoList(models.Model):
    title = models.CharField(max_length=30)
    author = models.ForeignKey(User, null=True, blank=True, on_delete='SET_NULL')
    describe = models.TextField()
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)
    image = models.ImageField(null=True, blank=True)
    videos = models.ManyToManyField(Video)

    class Meta:
        verbose_name = '视频列表'
        verbose_name_plural = '视频列表'
        db_table = 'video_list'

    def __str__(self):
        return self.title


class CardStyle(models.Model):
    main_color = models.CharField(max_length=20, null=True, blank=True)
    title_font_size = models.CharField(max_length=20, null=True, blank=True)
    subtitle_font_size = models.CharField(max_length=20, null=True, blank=True)
    title_color = models.CharField(max_length=20, null=True, blank=True)
    subtitle_color = models.CharField(max_length=20, null=True, blank=True)

    class Meta:
        verbose_name = '卡片样式'
        verbose_name_plural = '卡片样式'
        db_table = 'card_style'

    def __str__(self):
        return self.main_color
