# -*- coding: utf-8 -*-

from django.db import models


class Article(models.Model):
    title = models.CharField(max_length=100, verbose_name='Название статьи')
    content = models.TextField(verbose_name='Содержимое статьи')
    createtime = models.DateTimeField()

    class Meta:
        verbose_name = 'Статья'
        verbose_name_plural = 'статьи'
        ordering = ['createtime']

    def __unicode__(self):
        return self.title
