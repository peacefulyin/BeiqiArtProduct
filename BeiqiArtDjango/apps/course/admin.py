from django.contrib import admin


from apps.course.models import Enroll,Course,CourseSchedule

# Register your models here.
admin.site.register(Enroll)
admin.site.register(Course)
admin.site.register(CourseSchedule)