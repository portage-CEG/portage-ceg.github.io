---
layout: page
title: Tools and Resources  
description: "A community-populated list of data curation software and guidance materials."
permalink: /tools-and-resources/
---

The following resources have been contributed by members of the national curation and data management communities, and reviewed by the Portage Curation Expert Group. Resources are arranged by keywords. 

**Know of a resource that isn't listed (but should be)? Submit it [here](/submit-a-resource).**


## Find a resource by keyword

{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign tag_words = site_tags | split:',' | sort %}

<div id="tags">
  <ul class="tags">
  {% for tag in tag_words %}
    <li><a href="#{{ tag | cgi_escape }}">{{ tag }} &raquo; <span>{{ site.tags[tag] | size }}</span></a></li>
  {% endfor %}
  </ul>

  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
  <h3 id="{{ this_word | cgi_escape }}">{{ this_word }}</h3>
  <ul class="posts">
    {% for post in site.tags[this_word] %}{% if post.title != null %}
    <li itemscope><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}{% endfor %}
  </ul>
  {% endunless %}{% endfor %}
</div>

