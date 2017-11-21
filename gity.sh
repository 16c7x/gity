#!/bin/bash
# Run a git add, git commit -m "message", git push

echo "Add your commit message"

read message

if [ -z $message ]
then
  echo "ERROR: you must leave a commit message"
  exit 1
fi

git add
git commit -m "$message"
git push origin master

exit 0
