{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}{{ title }}
{% endblock %}



{% block body %}<body class="home">{% endblock %}

{% block select_choice %}class="selected"{% endblock select_choice %}

{% block show_pic %}

    <div id="top-body" >
      <div id="images" class="theme-default">
        <ul id="slider">
          <li><img src="{% static "images/placeholders/1.jpg" %}" alt="" /></li>
          <li><img src="{% static "images/placeholders/2.jpg" %}" alt="" /></li>
          <li><img src="{% static "images/placeholders/3.jpg" %}" alt="" /></li>
		  <li><img src="{% static "images/placeholders/4.jpg" %}" alt="" /></li>
		  <li><img src="{% static "images/placeholders/5.jpg" %}" alt="" /></li>
        </ul>
      </div>
    </div>
{% endblock show_pic%}

{% block content%}

  <div id="bottom-content" class="container_12">
      <h2 class="dotted grey-shadow "><span>Добавить фотографию</span></h2>
         {% if messages %}
{#<ul class="messages">#}
            {% for message in messages %}
{#    <li{% if message.tags %} class="{{ message.tags }}"{% endif %}>{{ message }}</li>#}
            <h3{% if message.tags %} class="{{ message.tags }}"{% endif %}>{{ message }}</h3>
         {% endfor %}
{#</ul>#}
{% endif %}
         <div id="articles">
             <div class="container_12">
                <form method="POST" action="" enctype="multipart/form-data">{% csrf_token %}
                    {{ form.as_p }}
                    <input type="submit" class="btn btn-default" value="Добавить"/>

                </form>
             </div>


          </div>
  </div>
  <div>
    <a href="{% url 'choice'  %}"  >Назад к выбору действий</a>
  </div>
{% endblock content%}

{% block info %}
<div id="info">

  <div class="container_12">


  </div>
</div>
{% endblock %}