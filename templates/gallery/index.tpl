{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}Галерея{% endblock %}

{% block body %}{% endblock %}
{% block select_gal %}class="selected"{% endblock select_gal %}
{% block top-body %}
<div id="top-body" >
      <h1 class="shadow">&nbsp;</h1>
    </div>
{% endblock %}

{% block show_pic %}
{% endblock %}

{% block content %}
<div id="gallery" class="container_12">
<h2 class="dotted grey-shadow "><span>Добро пожаловать в мою галерею!</span></h2>
<p>&nbsp;</p>
<p>&nbsp;</p>
{% for item in item_list %}
     <div class="dirImgList">
        <div>
            <h4>{{ item.title }}</h4>
            <div class="dirImgWrapper">
            {% if item.photo_set.count %}
                <a href="album/{{ item.id }}/"  title="{{item.description}}">
                <img class="dirImgCntr" src="{{ item.photo_set.all.0.image.thumb_url }}"  />
                </a>
            {% else %}
                <a href="album/{{ item.id }}/"  title="{{item.description}}">
                <img class="dirImgCntr" src=" {% static "photos/no_img.jpg"%}"  />
                </a>
            {% endif %}
            </div>
        </div>
     </div>
{% endfor %}
  <div style="clear:both"></div>
  <div id="navigation">
    <div class="clearfix">
      {% if  item_list.paginator.page_range > 1 %}
        {% if item_list.has_previous %}
            <a class="prev page-numbers" href="{% url 'gallery' item_list.previous_page_number %}">&laquo; </a>
        {% else %}

        {% endif %}
        {% for page in item_list.paginator.page_range %}
            {% if page == item_list.number %}
                <span class="page-numbers current">{{page}}</span>
            {% else %}
                <a class="page-numbers" href="{% url 'gallery' page %}">{{page}}</a>
            {% endif %}
        {% endfor %}
        {% if item_list.has_next %}
            <a class="next page-numbers" href="{% url 'gallery' item_list.next_page_number %}">&raquo; </a>
        {% else %}

        {% endif %}
      {% endif %}
    </div>
  </div>
</div>
{% endblock %}


{% block info %}
    <div id="info">

        <div class="container_12">


        </div>
    </div>
{% endblock %}

