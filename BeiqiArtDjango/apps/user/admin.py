from django.contrib import admin

from apps.user.models import User, Teacher, Student, Parent

admin.site.register(User)
admin.site.register(Teacher)
admin.site.register(Student)
admin.site.register(Parent)
# Register your models here.
