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
  git push --set-upstream origin-here master 
  git remote add origin-metakgp https://${OUATH_KEY}@github.com/metakgp/naarad.git
  git fetch --unshallow origin-here
  echo "naarad.metakgp.org" > docs/CNAME
  git add docs/CNAME
  git commit --amend --no-edit
  git push -f origin-metakgp master 
}

setup_git
commit_website_files
upload_files