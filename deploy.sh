#!/bin/bash
# source /home/pi/.bashrc
# git remote update
# git rebase origin/master
# source /home/pi/naarad_venv/bin/activate
python3 fbscraper.py
#python3 frontend.py
# deactivate
# # Commit changes
# echo "commiting.."
# git add -A
# git commit --amend --no-edit

# # Create the subtree, push changes to gh-pages
# # git subtree split --prefix output -b gh-pages

# echo "deploying.."
# git push -f origin master
# # git push -f origin gh-pages:gh-pages

# echo "cleaning..."
# git branch -D gh-pages
