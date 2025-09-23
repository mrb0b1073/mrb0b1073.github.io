#!/bin/bash

# Script to deploy Hugo web page at GitHub Pages using branch "deploy"

set -e

DEPLOY_BRANCH="deploy"

# Build website
echo "Building Hugo website..."
hugo

# Change to deploy branch (it is created if not exists)
if git show-ref --quiet refs/heads/$DEPLOY_BRANCH; then
    git checkout $DEPLOY_BRANCH
else
    git checkout --orphan $DEPLOY_BRANCH
fi

# Clean branch (delete old files)
echo "Cleaning old files..."
git rm -rf . > /dev/null 2>&1 || true

# Copy files at public/
echo "Copying generated files at public/..."
cp -r public/* .

# Add and commit changes
git add .
git commit -m "Deploy site - $(date +"%Y-%m-%d %H:%M:%S")"

# Push to GitHub
echo "Puushing to branch $DEPLOY_BRANCH..."
git push origin $DEPLOY_BRANCH --force

# VGo back to main
git checkout main

echo "Deploy completed successfully!"
