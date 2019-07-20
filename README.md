# portage-ceg.github.io

This is the repository for the Portage Curation Expert Group [Data Curation Survival Guide](https://portage-ceg.github.io).

## How to update this site: 
You do not have to edit anything in this repository! If you'd like to contribute resources, add an entry to [this Google Sheet](https://docs.google.com/spreadsheets/d/1OK5ZNeNVtTARDJx2sdEIj2jri1pWDL6Gs5nq12GLlPw/edit#gid=0). An administrator from the Portage CEG will review the addition. 

### For CEG Admins
When a new submission arrives, review the submitted information. Some considerations: 
- Remove any colons (":") from entries in the **Resource Title** field -- this breaks the Jekyll. 
- The page **permalink** is generated automatically (hidden Column A), and all **tags** are automatically normalized and concatenated into a single comma-separated array (hidden Column F)
- Ensure that the **Resource Description** field (Column D) is written in Markdown-formatted text, and that the resource URL is included in the text (using proper syntax).  

Once you're ready to publish the entry to the Survival Guide, set the value in the **Ready to Publish** field (Column E) to **YES**. This will make it appear in the [To Publish](https://docs.google.com/spreadsheets/d/1OK5ZNeNVtTARDJx2sdEIj2jri1pWDL6Gs5nq12GLlPw/edit#gid=1886005994) tab. 

To update the Survival guide, run the csv_to_jekyll_portageceg.py script in a local repository, stage, commit, and push the changes to this github repo. The script carries out the following tasks:
- download the newest version of the ToPublish tab (in .csv format)
- remove all existing markdown (.md) files in the **_posts/** directory. 
- create a new markdown file in the **_posts/** directory for each row in the downloaded csv, with proper yaml front matter and body.

That's it! All pages should be automatically updated!

**Credit:** The csv_to_jekyll_portageceg.py script expands upon the code created by Evan Lovely and described [here](http://www.evanlovely.com/utilities/jekyll/spreadsheet-to-markdown/). 

## How this site works

This site is rendered by Jekyll. [Alex Gil has written a descriptive tutorial on Jekyll](https://www.chronicle.com/blogs/profhacker/jekyll1/60913), but in a nutshell, Jekyll is a 'static site generator' that relies on templates, metadata, and simplified code. 

* [Markdown](#markdown)
* [Front Matter](#front-matter)
* [Liquid Tags](#liquid-tags)
* [General Formatting](#general-formatting)

### Markdown

GitHub pages are primarily written in Markdown--a simplified markup language that turns plain text into html. There are a number of different 'flavours' of Markdown; this site is written in Kramdown. Here's a [Kramdown Cheat Sheet](https://kramdown.gettalong.org/quickref.html). Markdown files can be created right in GitHub, or written in your favourite text editor. They **must** be saved with the extension `.md`. 
*(fun fact: this README is written in [GitHub flavoured Markdown](https://help.github.com/en/articles/basic-writing-and-formatting-syntax), which doesn't have as many options as Kramdown...especially when it comes to the table of contents. Make sure you specify Kramdown if you are searching outside tutorials!)*

### Front matter

Each page needs to start with [YAML front matter](https://jekyllrb.com/docs/front-matter/). Basically, this is metadata that provides information to Jekyll on how to render the page. It looks like this:

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

There are more options available for metadata at the link above, but I'll break down what's here.

- **layout**
    - this tells Jekyll which layout to use, based on pre-defined designs. The most common layouts will be `page` and `post`. Posts are saved for bloglike items and require a date in the filename, formatted like this: `2018-10-05-hosting.md`. Pages dont need a date, but keep the filename simple and direct. These pages will rely on templates that provide items like menus and footers. The templates rarely need to be changed, but they often have names like `default` or `layout`. 
- **title**
    - this is the title of the document. This title will appear in the header information (meaning it'll display the title in the browser tab). You can also 'call' on this title to have it display in the body of the page itself or in other places using something called a 'liquid tag'. More on that later :)
- **date**
    - this is the date the document was created. Like titles, this date field can be called on in the body of the text, and other places.
- **categories**
    - this describes the content of the page. There should be fewer categories than tags, and generally a page should only fit into *one* category, though multiple categories can be assigned. Categories can be called on to generate dynamic lists on other pages, populate menus, or just generally help to organize information. Categories can also be used to custommize the URL. For example, the URL for this page could be `http://portage-ceg.github.io/tutorial/hello-world`. If the page has no set category, the URL would look like this: `http://portage-ceg.github.io/hello-world`.
- **tags**
    - another way of describing the page. Pages can have multiple tags, just make sure to format them as they are in the example above. This site has a search function that uses tags. They're handy!
- **permalink**
    - this is a helpful feature which sets essentially removes the `.html` from the URL. Be **very** careful not to set the same permalink on multiple pages because it **will** break the site. It's good practice to make the permalink the same as the page title, or a shortened version. See the page URL in the above definition of categories.

### Liquid Tags

This is probably the most complex part of Jekyll, but luckily, for a simple static site like this, most of the liquid tags have already been placed out-of-site in the templates. [If you want to know more, here is some basic Jekyll documentation on liquid tags](https://jekyllrb.com/docs/variables/). 
*(fun fact: the Liquid language was created by Shopify!)* 

One way of using liquid tags is to call information from the Front Matter. A tag like `{page.title}` in Markdown will display the title of the page. A tag like `{page.date}`will display the date listed in the Front Matter. Liquid tags can also be used for more complex coding operations, like 'for-if' loops. 

### General Formatting

Markdown is really easy. Rather than listing everything here, you can check out the [Kramdown Cheat Sheet](https://kramdown.gettalong.org/quickref.html) OR you can look at the *raw* output of this readme file to see how this page has been rendered. To access that, view the file [here](README.md), and click on 'Raw' in the top right corner. You can inspect any page in this repository by looking a the raw contents. This can be especially useful when creating new pages, simply copy and paste from the raw output that you want to emulate, and then fill it in with your own text. 
