from ckeditor_uploader.fields import RichTextUploadingField
from django.db import models

class Course(models.Model):
    name = models.CharField(max_length=20)
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)
    describe = models.TextField(null=True, blank=True)
    detail_page = RichTextUploadingField(blank=True, null=True, verbose_name="课程详情页", config_name='默认')

    class Meta:
        verbose_name = '课程'
        verbose_name_plural = '课程'
        db_table = 'course'

    def __str__(self):
        return self.name


class CourseSchedule(models.Model):
    STATE_CHOICES = (
        (1, "待完成"),
        (2, "已完成"),
        (3, "待改期"),
        (4, "已改期"),
    )
    start = models.DateTimeField()
    end = models.DateTimeField()
    state = models.IntegerField(default=1, choices=STATE_CHOICES)
    remark = models.CharField(max_length=200)
    course = models.ForeignKey(Course, on_delete='SET_NULL')

    class Meta:
        verbose_name = '课程表'
        verbose_name_plural = '课程表'
        db_table = 'course_schedule'

    def __str__(self):
        return self.course.name


class Enroll(models.Model):
    STATE_CHOICES = (
        (1, "待完成"),
        (2, "已完成"),
        (3, "待改期"),
        (4, "已改期"),
    )
    GENDER_CHOICES = (
        (1, "男"),
        (2, "女"),
    )
    name = models.CharField(max_length=20)
    gender = models.IntegerField(default=1, choices=GENDER_CHOICES)
    age = models.IntegerField()
    date = models.DateTimeField()
    create_time = models.DateTimeField(auto_now=True)
    update_time = models.DateTimeField(auto_now_add=True)
    course = models.ForeignKey(Course, on_delete='SET_NULL')
    parentName = models.CharField(max_length=20)
    phone = models.IntegerField()
    state = models.IntegerField(default=1, choices=STATE_CHOICES)
    remark = models.TextField()

    class Meta:
        verbose_name = '申请表'
        verbose_name_plural = '申请表'
        db_table = 'enroll_sheet'

    def __str__(self):
        return self.name
