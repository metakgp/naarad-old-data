#!/bin/sh

setup_git() {
  git config --global user.email "americast@kossiitkgp.in"
  git config --global user.name "Naarad Muni"
}

commit_website_files() {
  # git checkout master
  git add docs/ hist.txt
  git commit --message "Update and Build"
}

upload_files() {
  git remote add origin-here https://${OUATH_KEY}@github.com/americast/naarad.git
  git push --quiet --set-upstream origin-here master 
}

setup_git
commit_website_files
upload_files