#!/bin/bash

version=$1
branch="release"
dist_branch="dist"

[[ -z $version ]] && echo "Usage: dopublish.sh <version>" && exit 0

git checkout $branch

mkdir -p build/tmp

zip -r $HOME/KOB-email-verification/build/tmp/kob-email-latest.zip COMPLIANCE.yaml $(ls -d */ | grep -v "bin" | grep -v "build") 
zip --delete $HOME/KOB-email-verification/build/tmp/kob-email-latest.zip "scripts/tmpl/"
zip --delete $HOME/KOB-email-verification/build/tmp/kob-email-latest.zip "scripts/*.io"
cp $HOME/KOB-email-verification/build/tmp/kob-email-latest.zip $HOME/KOB-email-verification/build/tmp/kob-email-$version.zip

mv $HOME/KOB-email-verification/scripts/*.io $HOME/KOB-email-verification/build/tmp/

git checkout $dist_branch

git checkout $branch -- $HOME/KOB-email-verification/build/tmp/* &> /dev/null

mkdir dist &> /dev/null
# moving of latest files from tmp/ to dist/
mv $HOME/KOB-email-verification/build/tmp/* $HOME/KOB-email-verification/dist/

# saving changes and pushing
git add $HOME/KOB-email-verification/dist/*
git commit -m "Released the version $version"
git push origin -f $dist_branch

#checkout back to master
git checkout master



