---
layout: page
title: Outils et ressources  
description: ""
lang: fr
ref: tools
---

<table style="background-color: #ffff99;">
<tbody>
<tr>
<td>
<p><b>Ce site Web est à l'état de validation de principe précoce (c.-à-d. version beta).</b>. Bien que la fonctionnalité bilingue existe, la majeure partie du contenu reste sans traduction.</p>
<p>Désirez-vous soumettre des commentaires sur ce site? Souhaitez-vous contribuer à son élaboration? Contactez-nous via le formulaire ci-dessous.</p>
</td>
</tr>
</tbody>
</table>

**Vous souhaitez ajouter une ressource à cette liste? Soumettez-la [ici]({% link fr/outils-et-ressources/soumettre-une-ressource.md %}).**

Des membres des collectivités nationales de curation et de gestion des données ont contribué les ressources suivantes, qu'ont aussi examinées le Groupe d'experts sur la curation des données de Portage. Les ressources sont organisées par mot-clé.

Vous pouvez trouver des ressources en utilisant deux méthodes :
* [Recherche de ressources](#recherche-de-ressources)
* [Parcourir les ressources par mot-clé](#parcourir-les-ressources-par-mot-clé)


## Recherche de ressources
<form id="site_search">

<p>Searches all content and tags:
<input id="search" type="text"/></p></form>

<hr>

<div id="results"></div>
<ul id="search_results"></ul>
<script src="{{site.baseurl}}/js/elasticlunr.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="{{site.baseurl}}/js/search.js"></script>


## Parcourir les ressources par mot-clé

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
