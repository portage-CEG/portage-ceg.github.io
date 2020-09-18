---
layout: page
title: Archivage et préservation
description: ""
lang: fr
ref: archiving-preserving
---
<ul>
  {% assign postlang = site.data.navigation.languages %}
  {% for item in postlang %}
  {% for post in site.posts %}
      {% if item.language == page.lang %}
      {% if post.lang == page.lang %}
      {% if post.categories contains "archiving and preserving" %}
          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endif %}
      {% endif %}
      {% endif %}
  {% endfor %}
  {% endfor %}
</ul>
