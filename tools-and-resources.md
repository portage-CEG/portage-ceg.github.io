---
layout: page
title: Tools and Resources  
description: "A community-populated list of data curation software and guidance materials."
permalink: /tools-and-resources/
---

## Find a Resource

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

## Submit a Resource
<iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfhUnD5Glf57XBGpXWpX4XEGmKqSB7_nYZV2Xu0O81jnYJsQg/viewform?embedded=true" width="640" height="600" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
