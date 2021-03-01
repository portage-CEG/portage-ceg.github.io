---
layout: page
title: Tools and Resources  
description: "A community-populated list of data curation software and guidance materials."
lang: en
ref: tools
---

<table style="background-color: #ffff99;">
<tbody>
<tr>
<td>
<p><b>This website is currently in a beta phase</b>. Though bilingual functionality exists, we are still working on translating all elements.</p>
<p>If you would like to provide feedback or help build this resource, please see the link at the bottom for contact information.</p>
</td>
</tr>
</tbody>
</table>

**Want to add a resource to this list? Submit it [here]({% link en/tools-and-resources/submit-a-resource.md %}).**

The following resources have been contributed by members of the national curation and data management communities, and reviewed by the Portage Curation Expert Group. Resources are arranged by keywords.

You can find resources using two methods:
* [Search for resources](#search-for-resources)
* [Browse resources by keyword](#browse-by-keyword)

## Search for resources
<form id="site_search">

<p>Searches all content and tags:
<input id="search" type="text"/></p></form>

<hr>

<div id="results"></div>
<ul id="search_results"></ul>
<script src="{{site.baseurl}}/js/elasticlunr.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="{{site.baseurl}}/js/search.js"></script>

## Browse by keyword

<!--- The code below generates the list of tags present in all of the posts --->

<!--- This first chunk of code has to go all together (rather than on separate lines) because it is a capture block --->
{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}

{% assign tag_words = site_tags | split:',' | sort %}

<div id="tags">
  <ul class="tags">
  {% for tag in tag_words %}
    <li><a href="#{{ tag | cgi_escape }}">{{ tag }} &raquo; <span>{{ site.tags[tag] | size }}</span></a></li>
  {% endfor %}
  </ul>

<!--- The code below generates the list of posts based on an alphabetical list of tags --->

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
