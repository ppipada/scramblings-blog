#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "Deploying updates to GitHub...\n"

# Build the project.
hugo -t even # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder i.e submodule
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# push commit to origin repo too.
cd ..

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master