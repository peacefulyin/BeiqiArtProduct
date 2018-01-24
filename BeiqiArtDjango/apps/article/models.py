from ckeditor_uploader.fields import RichTextUploadingField
from django.db import models

from apps.user.models import User


class Tag(models.Model):
    name = models.CharField(max_length=20)
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = '标签'
        verbose_name_plural = '标签'
        db_table = 'tags'

    def __str__(self):
        return self.name

class Article(models.Model):

    title = models.CharField(max_length=100)
    content = RichTextUploadingField(blank=True, null=True, verbose_name="内容", config_name='default')
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)
    author = models.ForeignKey(User, on_delete=models.PROTECT)
    tags = models.ManyToManyField(Tag)

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = '文章'
        db_table = 'article'

    def __str__(self):
        return self.title
