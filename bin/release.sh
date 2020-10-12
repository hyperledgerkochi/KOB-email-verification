#!/bin/bash

version=$1

branch="Release"

[[ -z $version ]] && echo "Usage: release.sh <version>" && exit 0

if [[ -z $KOB_NAMESPACE ]];
    then
        KOB_NAMESPACE={KOB_NAMESPACE:-hyperledgerkochi}
fi

cd $HOME/KOB-email-verification
git checkout master
git branch -D $branch
git checkout -b $branch

cp $HOME/KOB-email-verification/scripts/tmpl/*.tmpl $HOME/KOB-email-verification/scripts/

for file in $HOME/KOB-email-verification/scripts/*.tmpl;
do
    sed -i "s/@VERSION@/$version/g" $file
    sed -i "s/@KOB_NAMESPACE@/$KOBNAMESPACE/g" $file
    # renaming to remove .tmpl extension
    mv "$file" "${file//.tmpl/}"
done

git add $HOME/KOB-email-verification/scripts/*.tmpl
git commit -m "Update version of $branch to $version"

git push -f -u origin $branch

#Push tag
git tag -a $version -m "Releasing version $version"
git push origin $version

#checkout to master
git checkout master
