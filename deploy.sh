#!/bin/bash
set -e

# Replace with your GitHub username and repository
USERNAME="SmartAppTeam"
REPO="ravi"
BRANCH="ravi"

echo "Initializing git repo..."
git init
git branch -M $BRANCH
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/$USERNAME/$REPO.git
git push -u origin $BRANCH

echo "Enabling GitHub Pages..."
gh repo edit --add-topic smartapp --description "Smart App promo site"
gh repo edit -h $USERNAME.github.io
gh pages -d .
