---
layout: page
title: Tags
description: "An archive of posts sorted by tag."
permalink: /tags/
---

Click on a tag to see relevant list of posts.

{% assign sortedTags = site.tags | sort: 'title' %}

<ul class="tags">
{% for sortedTags in site.tags %}
  {% assign t = sortedTags | first %}
  <li><a href="/tags/#{{t | downcase | replace:" ","-" }}">{{ t | downcase }}</a></li>
{% endfor %}
</ul>

---

{% for sortedTags in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}

<h4><a name="{{t | downcase | replace:" ","-" }}"></a><a class="internal" href="/tags/#{{t | downcase | replace:" ","-" }}">{{ t | downcase }}</a></h4>
<ul>
{% for post in posts %}
  {% if post.tags contains t %}
  <li>
    <a href="{{ post.url }}">{{ post.title }}</a>
    <span class="date">{{ post.date | date: "%B %-d, %Y"  }}</span>
  </li>
  {% endif %}
{% endfor %}
</ul>

---

{% endfor %}
