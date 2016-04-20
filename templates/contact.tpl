{% extends 'base.html' %}
{%load staticfiles%}
{% block title %}{{ title }}
{% endblock %}



{% block body %}<body class="home">{% endblock %}

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
{#    <div id="recent-posts" class="grid_8 alpha">#}
{#      <h2 class="grey-shadow">Recent Posts</h2>#}
{#      <div id="blog">#}
{#        <div class="recent-post">#}
{#          <h3><a href="#">Sample H3 heading</a></h3>#}
{#          <p> "Don't be afraid now," said he, grinning again, "Queequeg here wouldn't harm a hair of your head." "Stop your grinning," shouted I, "and why didn't you tell me that that infernal harpooneer </p>#}
{#          <div class="clear"></div>#}
{#          <img src="{% static "images/speech-bubble.png"%}" alt="" class="bubble left" /><a href="#" class="left">21 Comments</a>#}
{#          <div class="date">#}
{#            <p>&nbsp;17 July 2011</p>#}
{#          </div>#}
{#        </div>#}
{#        <div class="recent-post">#}
{#          <h3><a href="#">Sample H3 heading</a></h3>#}
{#          <p> "Don't be afraid now," said he, grinning again, "Queequeg here wouldn't harm a hair of your head." "Stop your grinning," shouted I, "and why didn't you tell me that that infernal harpooneer </p>#}
{#          <div class="clear"></div>#}
{#          <img src="{% static "images/speech-bubble.png"%}" alt="" class="bubble left" /><a href="#" class="left">21 Comments</a>#}
{#          <div class="date">#}
{#            <p>&nbsp;17 July 2011</p>#}
{#          </div>#}
{#        </div>#}
{#      </div>#}
{#    </div>#}
    <div id="contactUs" class="grid_4 omega">
      <div id="internet" class="grey-shadow">
        <h2>Я в сети интернет</h2>
        <ul>
          <li> <a href="#"> <img src="{% static "images/icons/32/facebook.png"%}" alt="" /> </a> </li>
{#          <li> <a href="#"> <img src="images/icons/32/linkedin.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/twitter.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/rss.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/flickr.png" alt="" /> </a> </li>#}
{#          <li> <a href="#"> <img src="images/icons/32/delicious.png" alt="" /> </a> </li>#}
        </ul>
      </div>
      <h2 class="grey-shadow">Контакт</h2>
          <div id="message" style="display:none;">

          </div>
          <div class="clear"></div>
        <!--
          <form action="#" id="quick-contact">
            <label for="user-email" class="left " > Email Address:</label>
            <input type="text" name="user-email" id="user-email" value="" maxlength="40" class="right email required"/>
            <div class="clear"></div>
            <label for="user-message" class="left">Message:</label>
            <textarea cols="" rows="3" id="user-message" name="user-message" class="right required"></textarea>
            <div class="clear"></div>
            <input type="submit" class="quick-submit shadow right" style="" value="Send message"/>
          </form>
          -->
    </div>
  </div>
</div>
{% endblock %}