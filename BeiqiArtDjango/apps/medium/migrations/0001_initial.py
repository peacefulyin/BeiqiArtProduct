# Generated by Django 2.0 on 2018-01-24 12:58

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('user', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CardStyle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('main_color', models.CharField(blank=True, max_length=20, null=True)),
                ('title_font_size', models.CharField(blank=True, max_length=20, null=True)),
                ('subtitle_font_size', models.CharField(blank=True, max_length=20, null=True)),
                ('title_color', models.CharField(blank=True, max_length=20, null=True)),
                ('subtitle_color', models.CharField(blank=True, max_length=20, null=True)),
            ],
            options={
                'verbose_name': '卡片样式',
                'verbose_name_plural': '卡片样式',
                'db_table': 'card_style',
            },
        ),
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('link', models.CharField(max_length=200)),
                ('describe', models.TextField(blank=True, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='')),
                ('create_time', models.DateTimeField(auto_now=True)),
                ('update_time', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': '视频',
                'verbose_name_plural': '视频',
                'db_table': 'video',
            },
        ),
        migrations.CreateModel(
            name='VideoList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30)),
                ('describe', models.TextField()),
                ('create_time', models.DateTimeField(auto_now=True)),
                ('update_time', models.DateTimeField(auto_now_add=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='')),
                ('author', models.ForeignKey(blank=True, null=True, on_delete='SET_NULL', to='user.User')),
                ('videos', models.ManyToManyField(to='medium.Video')),
            ],
            options={
                'verbose_name': '视频列表',
                'verbose_name_plural': '视频列表',
                'db_table': 'video_list',
            },
        ),
    ]