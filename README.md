# portage-ceg.github.io

This is the repository for the Portage Curation Expert Group [Data Curation Survival Guide](https://portage-ceg.github.io).

This site is rendered by Jekyll. [Alex Gil has written a descriptive tutorial on Jekyll](https://www.chronicle.com/blogs/profhacker/jekyll1/60913), but in a nutshell, it is a 'static site generator' that relies on templates, metadata, and simplified code. 

GitHub pages are primarily written in Markdown--a simplified markup language that turns plain text into html. There are a number of different 'flavours' of Markdown, and this site is written in Kramdown. Here's a [Kramdown Cheat Sheet](https://kramdown.gettalong.org/quickref.html). 

Each page also needs to start with a YAML header. Basically, this provides information to Jekyll on how to render the page. It looks like this:

---
layout: post
title:  Hello World!
date:   2018-10-04
categories: tutorial
tags: website
      jekyll
      library
      portage
---
