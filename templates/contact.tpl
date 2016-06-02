{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}{{ title }}
{% endblock %}



{% block body %}<body class="home">{% endblock %}

{% block select_cont %}class="selected"{% endblock select_cont %}

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
      <h2 class="dotted grey-shadow "><span>{{ title }}</span></h2>
         <div id="articles">
                <p>{{ content }}</p>


          </div>
  </div>
{% endblock content%}

{% block info %}
<div id="info">

  <div class="container_12">


  </div>
</div>
{% endblock %}