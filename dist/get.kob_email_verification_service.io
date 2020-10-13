#!/bin/bash
export KOB_SERVICE="raw.githubusercontent.com"
KOB_NAMESPACE="asa1997"
VERSION="taga3"
echo "KOB-EMAIL-VERIFICATION-SERVICE"
[[ -d $HOME/KOB-email-verification-service ]] && echo "Service already found at $HOME/KOB-email-verification-service" && exit 0
mkdir -p $HOME/KOB-email-verification-service
echo "Downloading necessary files..."
curl -sL --location --progress-bar "${KOB_SERVICE}/${KOB_NAMESPACE}/KOB-email-verification/dist/dist/kob-email-latest.zip" > $HOME/kob-email.zip
[[ "$?" != "0" ]] && echo "Something went wrong" && exit 0
echo "Unpacking files...."
unzip $HOME/kob-email.zip -d $HOME/KOB-email-verification-service
[[ "$?" == "0" ]] && echo "Success"
[[ -f $HOME/kob-email-latest.zip ]] && rm $HOME/kob-email-latest.zip
