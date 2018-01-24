from rest_framework import serializers
from rest_framework.pagination import PageNumberPagination
from django.forms.models import model_to_dict
from rest_framework.request import Request
from rest_framework.reverse import reverse
from rest_framework.test import APIRequestFactory

from apps.article.models import Article, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = '__all__'


class StandardResultSetPagination(PageNumberPagination):
    # 默认每页显示的条数
    page_size = 10
    # url 中传入的显示数据条数的参数
    page_size_query_param = 'page_size'

    # 最大每页显示条数





class ArticleSerializer(serializers.HyperlinkedModelSerializer):
    id = serializers.ReadOnlyField()
    tags = serializers.StringRelatedField(many=True)
    author = serializers.StringRelatedField()
    prev_item = serializers.SerializerMethodField()
    next_item = serializers.SerializerMethodField()

    class Meta:
        model = Article
        fields = '__all__'
        depth = 1

    def get_prev_item(self, obj):

        pub_date = obj.create_time
        prev_items = Article.objects.filter(create_time__lt=pub_date).order_by('-create_time')

        if prev_items:
            prev_item = prev_items[0]
            return model_to_dict(prev_item, fields=[field.name for field in prev_item._meta.fields])
        else:
            return False

    def get_next_item(self, obj):
        pub_date = obj.create_time
        next_items = Article.objects.filter(create_time__gt=pub_date)
        if next_items:
            next_item = next_items[0]
            return model_to_dict(next_item, fields=[field.name for field in next_item._meta.fields])
        else:
            return False
