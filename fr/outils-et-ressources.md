---
layout: page
title: Outils et ressources  
description: ""
lang: fr
ref: tools
---

**Vous souhaitez ajouter une ressource à cette liste? Soumettez-le [ici]({% link fr/outils-et-ressources/soumettre-une-ressource.md %}).**

## Browse by keyword

<!--- The code below generates the list of tags present in all of the posts. Need to find a way to only display tags associated with French posts --->

<!--- This first chunk of code has to go all together (rather than on separate lines) because it is a capture block --->
{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}

{% assign tag_words = site_tags | split:',' | sort %}

<div id="tags">
  <ul class="tags">
  {% for tag in tag_words %}
    <li><a href="#{{ tag | cgi_escape }}">{{ tag }} &raquo; <span>{{ site.tags[tag] | size }}</span></a></li>
  {% endfor %}
  </ul>

<!--- The code below generates the list of posts based on an alphabetical list of tags. Need to find a way to only display tags associated with French posts --->

  {% for item in (0..site.tags.size) %}{% unless forloop.last %}
  {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}

  <h3 id="{{ this_word | cgi_escape }}">{{ this_word }}</h3>
  <ul class="posts">
    {% for post in site.tags[this_word] %}
      {% if post.title != null %}
      {% if post.lang == page.lang %}
        <li itemscope><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endif %}
      {% endif %}
    {% endfor %}
  </ul>
  {% endunless %}{% endfor %}
</div>
