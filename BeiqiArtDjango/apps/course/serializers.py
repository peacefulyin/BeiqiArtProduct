from datetime import datetime
from rest_framework import serializers, filters
from rest_framework.pagination import PageNumberPagination

from apps.course.models import Course, CourseSchedule, Enroll


class StandardResultSetPagination(PageNumberPagination):
    # 默认每页显示的条数
    page_size = 10
    # url 中传入的显示数据条数的参数
    page_size_query_param = 'page_size'

    # 最大每页显示条数


class CourseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Course
        fields = '__all__'


class CourseScheduleSerializer(serializers.ModelSerializer):
    class Meta:
        model = CourseSchedule
        fields = '__all__'


class EnrollSerializer(serializers.ModelSerializer):
    class Meta:
        model = Enroll
        course = serializers.CharField(source='course')

        fields = '__all__'
        depth = 2

