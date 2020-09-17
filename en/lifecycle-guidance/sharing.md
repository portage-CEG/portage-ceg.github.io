---
layout: page
title: Sharing
description: "Guidance for curators during the sharing stage."
lang: en
ref: sharing
---

(publication, data deposit & sharing)*

In this stage, data are prepared for sharing, publishing, and preservation. It is important to consider what data can be shared, and any legal or ethical obligations that may limit how the data can be shared.  The research team may need to select an appropriate disciplinary repository, a generalist repository, or make other arrangements to share their data.

Some repositories have a self-mediated deposit and publication process, while others may have dedicated curators to assist researchers. There may be specific recommendations or requirements for what file formats and metadata standards can be used, what accompanying documentation should be included, and what licenses can be applied. Various factors such as the repository policies for stewardship and data retention, mechanisms for user support, and the ability to assign unique identifiers should be considered.  Tools such as the [Repository Finder tool](https://repositoryfinder.datacite.org/) and [re3data](https://www.re3data.org/), and guidance such as [The TRUST Principles for Digital Repositories](https://doi.org/10.1038/s41597-020-0486-7) can aid the selection process.

*Tools and resources in the following categories may be helpful:* [codebooks](/en/tools-and-resources/#codebooks), [confidentiality](/en/tools-and-resources/#confidentiality), [data archiving](/en/tools-and-resources/#data+archiving), [data cleaning](/en/tools-and-resources/#data+cleaning), [data deposit](/en/tools-and-resources/#data+deposit), [data repositories](/en/tools-and-resources/#data+repositories), [data reuse](/en/tools-and-resources/#data+reuse), [data visualization](/en/tools-and-resources/#data+visualization), [data wrangling](/en/tools-and-resources/#data+wrangling), [de-identification](/en/tools-and-resources/#de-identification), [documentation](/en/tools-and-resources/#documentation), [FAIR](/en/tools-and-resources/#FAIR), [file formats](/en/tools-and-resources/#file+formats), [file naming](/en/tools-and-resources/#file+naming), [metadata](/en/tools-and-resources/#metadata), [metadata standards](/en/tools-and-resources/#metadata+standards), [readme files](/en/tools-and-resources/#readme+files), [policies](/en/tools-and-resources/#policies), [research data licensing](/en/tools-and-resources/#research+data+licensing), [scholarly impact](/en/tools-and-resources/#scholarly+impact), [security](/en/tools-and-resources/#security), [sensitive data](/en/tools-and-resources/#sensitive+data), [software licensing](/en/tools-and-resources/#research+data+licensing).


<ul>
  {% assign postlang = site.data.navigation.languages %}
  {% for item in postlang %}
  {% for post in site.posts %}
      {% if item.language == page.lang %}
      {% if post.lang == page.lang %}
      {% if post.categories contains "sharing" %}
          <li><a href="{{ post.url }}">{{ post.title }}</a></li>
      {% endif %}
      {% endif %}
      {% endif %}
  {% endfor %}
  {% endfor %}
</ul>
