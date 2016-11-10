{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}Галерея{% endblock %}

{% block body %}{% endblock %}
{% block select_choice %}class="selected"{% endblock select_choice %}
{% block top-body %}
<div id="top-body" >
      <h1 class="shadow">&nbsp;</h1>
    </div>
{% endblock %}

{% block show_pic %}
{% endblock %}

{% block content %}
<div id="gallery" class="container_12">
<h2 class="dotted grey-shadow "><span>Редактирование</span></h2>
<p>&nbsp;</p>
<p>&nbsp;</p>
 <form method="POST" action="" enctype="multipart/form-data">{% csrf_token %}
     <img class="dirImgCntr" src="{{ photo.image.thumb_url }}"/>
     <p>Альбом:{{ form.item}}</p>
     <p>Название:{{ form.title}}</p>
     <p>Описание:<br>{{ form.caption}}</p>
     <input type="submit" value="Редактировать"/>

 </form>
 <p><a href="{% url 'delete_photo'  photo.id %}"  >Удалить</a></p>
{#{% for item in item_list %}#}
{#     <div >#}
{#        <div>#}
{#            <h3>Название альбома: {{ item.title }}</h3>#}
{#            <p>Описание альбома:</p>#}
{#            <p>{{item.description}}</p>#}
{#            <a href="{% url 'edit_album'  item.id %}"  > Редактировать</a>#}
{#            <hr>#}
{#        </div>#}
{#     </div>#}
{#{% endfor %}#}
  <div style="clear:both"></div>

</div>
    <div>
    <a href="{% url 'choice'  %}"  >Назад к выбору действий</a>
  </div>
{% endblock %}


{% block info %}
    <div id="info">

        <div class="container_12">


        </div>
    </div>

{% endblock %}
