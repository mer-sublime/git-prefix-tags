#!/bin/bash

# Get the list of tags from the Git repository that don't already start with 'v'
TAGS=$(git tag | grep -v '^v')

# Loop through each tag and add the 'v' prefix
for TAG in $TAGS
do
  NEW_TAG="v$TAG"
  git tag $NEW_TAG $TAG
  git tag -d $TAG
  git push origin :$TAG
done

# Push all updated tags to the remote repository
# git push --tags
