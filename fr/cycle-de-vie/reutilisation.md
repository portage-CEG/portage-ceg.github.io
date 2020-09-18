---
layout: page
title: Réutilisation
description: ""
lang: fr
ref: reusing
---
<ul>
{% assign postlang = site.data.navigation.languages %}
  {% for item in postlang %}
  {% for post in site.posts %}
      {% if item.language == page.lang %}
      {% if post.lang == page.lang %}
      {% if post.categories contains "reusing" %}
          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endif %}
      {% endif %}
      {% endif %}
  {% endfor %}
  {% endfor %}
</ul>
