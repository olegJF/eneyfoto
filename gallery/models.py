# -*- coding: utf-8 -*-
import os

from django.db import models

# from gallery.fields import ThumbnailImageField
from django.dispatch import receiver
from gallery.fields import ThumbnailImageField


class Album(models.Model):
    name = models.CharField(blank=True, max_length=30, verbose_name='Название альбома транслитом')
    title = models.CharField(max_length=50, verbose_name='Название альбома')
    description = models.TextField(blank=True, verbose_name='Описание альбома')

    class Meta:
        verbose_name = 'Альбом'
        verbose_name_plural = 'альбомы'
        ordering = ['name']

    def __unicode__(self):
        return self.title

        # def delete(self, *args, **kwargs):
        #     print('from Album class', self.pk)
        #     super(Album, self).delete(*args, **kwargs)

        # def get_absolute_url(self):
        #   return ('item_detail', None, {'object_id': self.id})


class Photo(models.Model):
    item = models.ForeignKey(Album, verbose_name='Название альбома')
    title = models.CharField(blank=True, max_length=100, verbose_name='Название фото')
    image = ThumbnailImageField(upload_to='photos', verbose_name='Фото')
    caption = models.TextField(blank=True, verbose_name='Описание фото')

    class Meta:
        verbose_name = 'Фотография'
        verbose_name_plural = 'фотографии'
        ordering = ['title']

    def __unicode__(self):
        return self.title

        # def delete(self, *args, **kwargs):
        #     print('from main class', self.image)
        #
        #     if os.path.exists(self.image._get_path()):
        #         print('OK')
        #     else:
        #         print('os.path', self.image.url)
        #
        #     super(Photo, self).delete(*args, **kwargs)


@receiver(models.signals.pre_delete, sender=Photo, weak=False)
def delete_photo(sender, instance, **kwargs):
    path_to_photo = instance.image.path
    path_to_thumb = path_to_photo[:-3] + 'thumb.' + path_to_photo[-3:]
    if os.path.exists(path_to_photo):
        os.remove(path_to_photo)
    if os.path.exists(path_to_thumb):
        os.remove(path_to_thumb)


@receiver(models.signals.pre_delete, sender=Album, weak=False)
def delete_photos_from_album(sender, instance, **kwargs):
    photo_list = Photo.objects.filter(item=instance.id)
    for photo in photo_list:
        photo.delete()

        # def get_absolute_url(self):
        #   return reverse('album', args=[str(self.id)])

# class Foto (models.Model):
#     title = models.CharField(max_length=100, verbose_name='Название фото')
#     image = models.ImageField(blank=True, upload_to="photos/")
#
#
#     class Meta:
#         verbose_name = 'XФотография'
#         verbose_name_plural = 'xфотографии'
#         ordering = ['title']
#
#     def __unicode__(self):
#         return self.title
# from gallery.models import Photo
# p=Photo.objects.get(pk=1)
# import os
# os.path.exists(p.image.path)
