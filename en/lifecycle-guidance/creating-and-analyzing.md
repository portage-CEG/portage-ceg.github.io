---
layout: page
title: Creating and Analyzing
description: "Guidance for curators during the data creation and analysis stage."
lang: en
ref: creating-analyzing
---

*(data collection, analysis, synthesis)*

In this researcher-focused stage, observations are made and datasets are created. In some cases, previously collected data or code from external sources may be reused or repurposed. There should be a plan in place to maintain and assure data quality and data integrity throughout the research project. The steps and methods used to process and analyze raw data should be documented, and any changes to the raw data files should be noted.

Descriptive metadata and documentation are an important part of this stage, and curators, data librarians and research support staff may have a role to play in creating or enhancing documentation and description.

**Relevant tools and resources:**

<ul>
  {% assign postlang = site.data.navigation.languages %}
  {% for item in postlang %}
  {% for post in site.posts %}
      {% if item.language == page.lang %}
      {% if post.lang == page.lang %}
      {% if post.categories contains "creating and analyzing" %}
          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endif %}
      {% endif %}
      {% endif %}
  {% endfor %}
  {% endfor %}
</ul>
