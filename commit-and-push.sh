#!/bin/bash

# Copy the latest version of the .xml file to the Git repository directory
cp /Users/vhu/dev/lh-version-control/tecan-backup/rnd-t7-evo.robo.counsyl.com/CustomLCS.xml /Users/vhu/dev/lh-version-control/rnd-t7-evo/CustomLCS.xml

# Exit if there are no changes to commit
if [ -z "$(git status --porcelain)" ]; then
  echo "No changes to commit."
  exit 0
fi

# Add the file to the Git repository
git add CustomLCS.xml

# Commit the changes with a message indicating that the .xml file has been updated
git commit -m "Update .xml file"

# Push the changes to the remote repository
git push origin master
