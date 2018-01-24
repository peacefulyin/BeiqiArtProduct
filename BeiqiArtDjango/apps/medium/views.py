import os

from rest_framework.decorators import list_route
from rest_framework.response import Response

from apps.medium.serializers import VideoSerializer, VideoListSerializer
from rest_framework import viewsets, filters

from apps.medium.models import VideoList, Video


class VideoViewSet(viewsets.ModelViewSet):
    queryset = Video.objects.all()
    serializer_class = VideoSerializer


class VideoListViewSet(viewsets.ModelViewSet):
    queryset = VideoList.objects.all()
    serializer_class = VideoListSerializer
    # 搜索
    filter_backends = (filters.SearchFilter,)
    search_fields = ('title',)

    @list_route(methods=['get'])
    def default(self, request):
        list = VideoList.objects.all()[:3]
        data = VideoListSerializer(list, many=True).data
        return Response(data)


