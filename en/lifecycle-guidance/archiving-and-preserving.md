---
layout: page
title: Archiving and Preserving
description: "Guidance for curators during the archiving and preservation stages."
lang: en
ref: archiving-preserving
---

*(long-term preservation, study close-down)*



In this stage, a curator or preservationist may take steps to ensure short-term access to research data, and the long-term preservation and retention of the data. Preservation actions may include file validation, creating preservation metadata and documentation, assigning representation information, and ensuring acceptable data structures. Files may be migrated or transformed for storage or to help ensure they remain accessible over time. It is important to document all actions to ensure the integrity and authenticity of the data. Data should be stored in a secure manner, and the length of retention may depend on the repository policies, or external requirements, such as legal obligations.

**Relevant tools and resources:**

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
