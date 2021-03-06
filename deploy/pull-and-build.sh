#!/bin/sh

set -e

BASEDIR=$(dirname $0)

date
echo $(who)

cd $BASEDIR

echo 'stashing'
git add -A
git stash save "STASH TO PULL AND BUILD" || true

git checkout build
echo 'checked out build'
git fetch
echo 'fetched'
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u})
if [ $LOCAL != $REMOTE ]; then
    echo 'pulling'
    git reset --hard origin/build
    echo 'pulled'
    echo 'building'
    sh ./build.sh
    echo 'build successfull'
else
    echo 'branch is up-to-date'
fi

