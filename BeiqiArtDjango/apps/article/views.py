import os

from rest_framework.decorators import detail_route, list_route
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.test import APIRequestFactory

from apps.article.serializers import ArticleSerializer, StandardResultSetPagination
from rest_framework import viewsets, filters

from apps.article.models import Article

module_dir = os.path.dirname(__file__)  # get current directory
file_path = os.path.join(module_dir, 'templates', 'index.html')
markfile_path = os.path.join(module_dir, 'templates', 'mark.txt')

factory = APIRequestFactory()
request = factory.get('/')
serializer_context = {
    'request': Request(request),
}

class ArticleViewSet(viewsets.ModelViewSet):
    filter_backends = (filters.SearchFilter,)
    search_fields = ('id',)
    queryset = Article.objects.all()
    serializer_class = ArticleSerializer
    pagination_class = StandardResultSetPagination

    @list_route(methods=['get'])
    def firstPage(self, request):
        article = Article.objects.all().order_by('-create_time')[0]
        article = ArticleSerializer(article, context=serializer_context)
        return Response(article.data)