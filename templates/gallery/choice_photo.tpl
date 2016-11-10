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
<h2 class="dotted grey-shadow "><span>Choice a foto!</span></h2>
{% if messages %}
    {% for message in messages %}
        <h3{% if message.tags %} class="{{ message.tags }}"{% endif %}>{{ message }}</h3>
    {% endfor %}
{% endif %}
<p>&nbsp;</p>
{% for item in item_list %}
     <div >
        <div>
            <h3>{{ item.title }}</h3>
            <div style="display: inline">
            {% if item.photo_set.count %}
               {%  for photo in item.photo_set.all %}
                   <div>

                     <div class="dirImgList">
                        <p>{{ photo.title }}</p>
                        <a href=" {% url 'edit_photo'  photo.id %}">
                         <img class="dirImgCntr" src="{{ photo.image.thumb_url }}"/>
                        </a>
                     </div>
                   </div>
               {% endfor %}
{#                <img class="dirImgCntr" src="{{ item.photo_set.all.0.image.thumb_url }}"  />#}

            {% else %}
                <div class="dirImgList">
                    <img class="dirImgCntr" src=" {% static "photos/no_img.jpg"%}"  />
                </div>
            {% endif %}
            </div>
        </div>
     <div style="clear:both"></div>
     </div>
{% endfor %}
  <div style="clear:both"></div>
{#  <div id="navigation">#}
{#    <div class="clearfix">#}
{#      {% if  item_list.paginator.page_range > 1 %}#}
{#        {% if item_list.has_previous %}#}
{#            <a class="prev page-numbers" href="{% url 'gallery' item_list.previous_page_number %}">&laquo; </a>#}
{#        {% else %}#}
{##}
{#        {% endif %}#}
{#        {% for page in item_list.paginator.page_range %}#}
{#            {% if page == item_list.number %}#}
{#                <span class="page-numbers current">{{page}}</span>#}
{#            {% else %}#}
{#                <a class="page-numbers" href="{% url 'gallery' page %}">{{page}}</a>#}
{#            {% endif %}#}
{#        {% endfor %}#}
{#        {% if item_list.has_next %}#}
{#            <a class="next page-numbers" href="{% url 'gallery' item_list.next_page_number %}">&raquo; </a>#}
{#        {% else %}#}
{##}
{#        {% endif %}#}
{#      {% endif %}#}
{#    </div>#}
{#  </div>#}
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
