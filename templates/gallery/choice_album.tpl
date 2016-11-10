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
<h2 class="dotted grey-shadow "><span>Выбор для редактирования</span></h2>
{% if messages %}
{#<ul class="messages">#}
    {% for message in messages %}
{#    <li{% if message.tags %} class="{{ message.tags }}"{% endif %}>{{ message }}</li>#}
        <h3{% if message.tags %} class="{{ message.tags }}"{% endif %}>{{ message }}</h3>
    {% endfor %}
{#</ul>#}
{% endif %}
<p>&nbsp;</p>
{% for item in item_list %}
     <div >
        <div>
            <h3>Название альбома: {{ item.title }}</h3>
            <p>Описание альбома:  {{item.description}}</p>
            |&nbsp;<a href="{% url 'edit_album'  item.id %}"  >Редактировать</a>&nbsp;
            |&nbsp;<a href="{% url 'delete_album'  item.id %}"  >Удалить</a>&nbsp;|
            <hr>
        </div>
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
