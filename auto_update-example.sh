#!/bin/bash

echo "=========================="
echo "Running survival guide update at `date -d now`"
cd /media/Stuff/Working/portage-ceg.github.io/

echo "Pulling changes"
git pull https://<username>:<password>@github.com/portage-CEG/portage-ceg.github.io.git master

# Run the python script (python3):
/media/Stuff/Working/portage-ceg.github.io/csv_to_jekyll_portageceg.py

echo "Adding new posts"
git add _posts/*
echo "Adding other local changes"
git add -u

echo "Committing"
git commit -m 'automatic update'

echo "Pushing to GitHub"
#git push origin master
git push -u https://<username>:<password>@github.com/portage-CEG/portage-ceg.github.io.git master

echo "Update completed."
