from django.db import models

from apps.course.models import Course

class User(models.Model):
    """
    用户
    """
    name = models.CharField(max_length=20)
    password = models.CharField(max_length=20, null=True, blank=True)
    mail = models.EmailField(null=True, blank=True)
    phone = models.IntegerField(null=True, blank=True)
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = '用户'
        verbose_name_plural = '用户'
        db_table = 'user'

    def __str__(self):
        return self.name


class Teacher(models.Model):
    """
    老师
    """
    GENDER_CHOICES = (
        (1, "男"),
        (2, "女"),
    )
    name = models.CharField(max_length=20)
    age = models.IntegerField(null=True, blank=True)
    gender = models.IntegerField(default=2, choices=GENDER_CHOICES, verbose_name="性别")
    courses = models.ManyToManyField(Course)
    describe = models.TextField(null=True, blank=True)
    join_time = models.DateTimeField(null=True, blank=True)
    phone = models.IntegerField()
    mail = models.EmailField(null=True, blank=True)
    avatar = models.ImageField(upload_to="img/teacher/avatar", null=True, blank=True)
    address = models.CharField(max_length=200, null=True, blank=True)




    class Meta:
        verbose_name = '老师'
        verbose_name_plural = '老师'
        db_table = 'teacher'

    def __str__(self):
        return self.name


class Parent(models.Model):
    GENDER_CHOICES = (
        (1, "男"),
        (2, "女"),
    )
    name = models.CharField(max_length=20)
    age = models.IntegerField(null=True, blank=True)
    gender = models.IntegerField(default=2, choices=GENDER_CHOICES, verbose_name="性别")
    describe = models.TextField(null=True, blank=True)
    phone = models.IntegerField()
    address = models.CharField(max_length=200, null=True, blank=True)

    class Meta:
        verbose_name = '家长'
        verbose_name_plural = '家长'
        db_table = 'parent'

    def __str__(self):
        return self.name


class Student(models.Model):
    """
    学生
    """
    GENDER_CHOICES = (
        (1, "男"),
        (2, "女"),
    )
    name = models.CharField(max_length=20)
    age = models.IntegerField()
    courses = models.ManyToManyField(Course,blank=True)
    gender = models.IntegerField(default=2, choices=GENDER_CHOICES, verbose_name="性别")
    describe = models.TextField(null=True, blank=True)
    join_date = models.DateTimeField(null=True, blank=True)
    end_date = models.DateTimeField(null=True, blank=True)
    avatar = models.ImageField(upload_to="img/student/avatar", null=True, blank=True)
    address = models.CharField(max_length=200,  null=True, blank=True)
    parent = models.ForeignKey(Parent, on_delete='CASCADE', null=True, blank=True)
    teacher = models.ManyToManyField(Teacher,blank=True)

    class Meta:
        verbose_name = '学生'
        verbose_name_plural = '学生'
        db_table = 'student'

    def __str__(self):
        return self.name
