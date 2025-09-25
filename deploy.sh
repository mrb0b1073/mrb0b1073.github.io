#!/bin/bash

# Script to deploy Hugo web page at GitHub Pages using branch "deploy"

set -e

DEPLOY_BRANCH="deploy"
DEPLOY_DIR="../deploy-worktree"
BASE_URL="https://mrb0b1073.github.io/"

# Build website
echo "Building Hugo website..."
HUGO_CMD="hugo --minify --cleanDestinationDir --baseURL \"$BASE_URL\""
eval $HUGO_CMD

# Change to deploy branch (it is created if not exists)
if git show-ref --quiet refs/heads/$DEPLOY_BRANCH; then
    echo "Updating worktree from $DEPLOY_BRANCH..."
    git worktree add --detach $DEPLOY_DIR $DEPLOY_BRANCH || true
else
    echo "Creating branch $DEPLOY_BRANCH and worktree..."
    git checkout --orphan $DEPLOY_BRANCH
    git rm -rf . > /dev/null 2>&1 || true
    git commit --allow-empty -m "Initial deploy branch"
    git push origin $DEPLOY_BRANCH
    git checkout main
    git worktree add $DEPLOY_DIR $DEPLOY_BRANCH
fi

# Clean branch (delete old files)
echo "Cleaning old files at deploy branch..."
rm -rf $DEPLOY_DIR/*

# Copy files at public/
echo "Copying generated files at public/..."
cp -r public/* $DEPLOY_DIR/

# Add and commit changes
cd $DEPLOY_DIR
git add .
git commit -m "Deploy site - $(date +"%Y-%m-%d %H:%M:%S")" || echo "No changes to commit"

# Push to GitHub
echo "Pushing to branch $DEPLOY_BRANCH..."
git push origin HEAD:$DEPLOY_BRANCH --force

# Go back to main and clean worktree
cd -
git worktree remove $DEPLOY_DIR

echo "Deploy completed successfully!"
