# portage-ceg.github.io

This is the repository for the Portage Curation Expert Group [Data Curation Survival Guide](https://portage-ceg.github.io).

## How to edit this site

This site is rendered by Jekyll. [Alex Gil has written a descriptive tutorial on Jekyll](https://www.chronicle.com/blogs/profhacker/jekyll1/60913), but in a nutshell, it is a 'static site generator' that relies on templates, metadata, and simplified code. 

* [Markdown](#markdown)
* [Front Matter](#front-matter)

### Markdown

GitHub pages are primarily written in Markdown--a simplified markup language that turns plain text into html. There are a number of different 'flavours' of Markdown, and this site is written in Kramdown. Here's a [Kramdown Cheat Sheet](https://kramdown.gettalong.org/quickref.html). Markdown files can be created right in GitHub, or using your favourite text editor. They **must** be saved with the extension `.md`.

### Front matter

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

- **layout**
    - this tells Jekyll which layout to use, based on pre-defined designs. Most common layouts will be `page` and `post`. Posts are saved for bloglike items and require a date in the filename, formatted like this: `2018-10-05-hosting.md`. Posts dont need a date, but keep the filename simple and direct.
- **title**
    - this is the title of the document. This title will appear in the header information (meaning it'll show up in the browser tab). You can also 'call' on this title to have it display in the body of the page itself or in other places. More on that later :)
- **date**
    - this is the date the document was created. Like titles, this date field can be called on in the body of the text, and other places.
- **categories**
    - this describes the content of the page. There should be fewer categories than tags, and generally a page should only fit into *one* category. Categories can be called on to generate dynamic lists on other pages, populate header bars, or just generally help to organize the information. Categories are not required, and they will appear in the URL. For example, the URL for this page would be `http://portage-ceg.github.io/tutorial/hello-world`. If the page has no set category, the URL would look like this: `http://portage-ceg.github.io/hello-world`.
- **tags**
    - another way of describing the page. Pages can have multiple tags, just make sure to format them as they are in the example above. This site has a search function that uses tags. They're handy!
- **permalink**
    - this is a helpful feature which sets essentially removes the `.html` from the URL. Be **very** careful not to set the same permalink on multiple pages because it will break the site. It's good practice to make the permalink the same as the page title, or a shortened version. See the page URL in the above definition of categories.
