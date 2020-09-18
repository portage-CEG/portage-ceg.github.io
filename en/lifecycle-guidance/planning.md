---
layout: page
title: Planning
description: "Guidance for curators during the research planning stage."
lang: en
ref: planning
---

*(study design, data management planning, research ethics application)*

This is a researcher focused stage in which a project is conceived and designed. Curators, data managers, and research data management librarians may be asked to assist researchers in the data management planning aspects of a research project. The research team should consider how the data will be collected or generated, structured, described and documented, and how the data will be stored and managed throughout the project. It is also beneficial to plan where and how the data will be shared at the project's conclusion. If data or code from external sources will be used in the research project, their terms of use should be noted.

Tools such as the [DMP Assistant](https://assistant.portagenetwork.ca/) will be useful for thinking through data management in the various stages of the [research data lifecycle](https://old.dataone.org/data-life-cycle).  

**Relevant tools and resources:**

<ul>
  {% assign postlang = site.data.navigation.languages %}
  {% for item in postlang %}
  {% for post in site.posts %}
      {% if item.language == page.lang %}
      {% if post.lang == page.lang %}
      {% if post.categories contains "planning" %}
          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endif %}
      {% endif %}
      {% endif %}
  {% endfor %}
  {% endfor %}
</ul>
