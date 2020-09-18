---
layout: page
title: Reusing
description: "Guidance for curators during the data reuse stage."
lang: en
ref: reusing
---

*(access, use, reuse and repurpose)*

In this stage, data or code are re-purposed or re-used. Robust access controls and authentication procedures may be applicable.
Ideally data and code that have been published will have a persistent identifier or accession number, and a license or clearly stated terms of use. These research outputs may be integrated with other sources, or processed and analyzed in new ways. New data or derived products may be created and published. Data and software citation should be encouraged.

**Relevant tools and resources:**

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
