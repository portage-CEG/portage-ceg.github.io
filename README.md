# portage-ceg.github.io

This is the repository for the Portage Curation Expert Group [Data Curation Survival Guide](https://portage-ceg.github.io).

This site is rendered by Jekyll. [Alex Gil has written a descriptive tutorial on Jekyll](https://www.chronicle.com/blogs/profhacker/jekyll1/60913), but in a nutshell, it is a 'static site generator' that relies on templates, metadata, and simplified code. 

GitHub pages are primarily written in Markdown--a simplified markup language that turns plain text into html. There are a number of different 'flavours' of Markdown, and this site is written in Kramdown. Here's a [Kramdown Cheat Sheet](https://kramdown.gettalong.org/quickref.html). Markdown files can be created right in GitHub, or using your favourite text editor. They **must** be saved with the extension `.md`.

Each page also needs to start with [YAML front matter](https://jekyllrb.com/docs/front-matter/). Basically, this is metadata that provides information to Jekyll on how to render the page. It looks like this:

~~~~~
---
layout: post
title:  Hello World!
date:   2018-10-04
categories: tutorial
tags: website
      jekyll
      library
      portage
permalink: /hello-world/
---
~~~~~

There are more options available for metadata at the link above, but I'll break down whats here.

layout
: this tells Jekyll which layout to use, based on pre-defined designs. Most common layouts will be `page` and `post`. Posts are saved for bloglike items and require a date in the filename, formatted like this: `2018-10-05-hosting.md`. Posts dont need a date, but keep the filename simple and direct.

