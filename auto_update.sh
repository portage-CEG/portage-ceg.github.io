#!/bin/bash

echo "Running survival guide update"
cd /media/Stuff/Working/portage-ceg.github.io/

# Run the python script (python3):
/media/Stuff/Working/portage-ceg.github.io/csv_to_jekyll_portageceg.py
git add _posts/*
git add -u
git commit -m 'automatic update'
git push origin master
 
