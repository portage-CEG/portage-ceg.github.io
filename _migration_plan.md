# Method
1. Transfer repo to target org (e.g. portage-ceg.github.io --> curation-commons org)
2. Rename repo in target org (e.g. rename portage-ceg.github.io --> curation-commons.github.io
3. Recreate the original repo (as an empty repo) in the original org
4. Create an ```index.md``` page in the original repo / org 
5. Add to ```index.md``` the following code (with necessary modifications) to set redirect:
```
# The Curation Commons has moved to a new home! 
Redirecting you to https://curation-commons.github.io
<meta charset="utf-8">
<meta http-equiv="refresh" content="3; https://curation-commons.github.io">
<link rel="canonical" href="https://curation-commons.github.io">
``` 
- See https://github.com/scds/scds-archive.github.io/edit/main/index.md as an example.
