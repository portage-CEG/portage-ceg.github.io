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

*Tools and resources in the following categories may be helpful:* [active data management](/en/tools-and-resources/#active+data+management), [data management planning](/en/tools-and-resources/#data+management+planning), [data repositories](/en/tools-and-resources/#data+repositories), [documentation](/en/tools-and-resources/#documentation), [file formats](/en/tools-and-resources/#file+formats), [file naming](/en/tools-and-resources/#file+naming), [Indigenous knowledge](/en/tools-and-resources/#indigenous+knowledge), [sensitive data](/en/tools-and-resources/#sensitive+data), [metadata standards](/en/tools-and-resources/#metadata+standards), [ontologies](/en/tools-and-resources/#ontologies), [readme files](/en/tools-and-resources/#readme+files), [RDM](/en/tools-and-resources/#rdm), [research data licensing](/en/tools-and-resources/#research+data+licensing), [software licensing](/en/tools-and-resources/#software+licensing), [version control](/en/tools-and-resources/#version+control).

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
