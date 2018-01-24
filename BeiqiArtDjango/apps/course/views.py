# Create your views here.
from django.forms.models import model_to_dict
from rest_framework import viewsets, filters, serializers
from rest_framework.decorators import detail_route, list_route
from rest_framework.response import Response

from apps.course.models import CourseSchedule, Course, Enroll
from apps.course.serializers import CourseSerializer, CourseScheduleSerializer, EnrollSerializer
from apps.user.models import Teacher, Student
from apps.user.serializers import TeacherSerializer, StudentSerializer


class CourseViewSet(viewsets.ModelViewSet):
    filter_backends = (filters.SearchFilter,)
    search_fields = ('name',)

    queryset = Course.objects.all()
    serializer_class = CourseSerializer

    @detail_route(methods=['get'])
    def detail(self, request, pk=None):
        obj = self.get_object()
        teachers = Teacher.objects.filter(courses=obj)
        students = Student.objects.filter(courses=obj)

        teachers = TeacherSerializer(teachers, many=True).data
        students = StudentSerializer(students, many=True).data
        return Response(
            {
                'status': 200,
                'data': CourseSerializer(obj).data,
                'teachers': teachers,
                'students': students
            }
        )

    @list_route(methods=['get'])
    def default(self, request, pk=None):
        courses = Course.objects.all()[:4]
        data = CourseSerializer(courses, many=True).data

        return Response(data)

class CourseScheduleViewSet(viewsets.ModelViewSet):
    queryset = CourseSchedule.objects.all()
    serializer_class = CourseScheduleSerializer


class EnrollViewSet(viewsets.ModelViewSet):
    queryset = Enroll.objects.all()
    serializer_class = EnrollSerializer

    def create(self, request, *args, **kwargs):
        instance = request.data
        course = Course.objects.get(name=instance['course'])
        instance['course'] = course
        create = Enroll.objects.create(**instance)
        return Response(model_to_dict(create))
