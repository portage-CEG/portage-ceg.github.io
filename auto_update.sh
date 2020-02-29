#!/bin/bash

echo "Running survival guide update"
cd /media/Stuff/Working/portage-ceg.github.io/

# Run the python script (python3):
/media/Stuff/Working/portage-ceg.github.io/csv_to_jekyll_portageceg.py
echo "Adding new posts"
git add _posts/*
echo "Adding other changes"
git add -u
echo "Commits:"
git commit -m 'automatic update'
echo "Push to GitHub:"
git push origin master
 
