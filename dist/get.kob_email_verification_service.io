#!/bin/bash
export KOB_SERVICE="https://github.com"
KOB_NAMESPACE="{KOB_NAMESPACE:-hyperledgerkochi}"
VERSION="taga1"
echo "KOB-EMAIL-VERIFICATION-SERVICE"
[[ -d $HOME/KOB-email-verification-service ]] && echo "Service already found at $HOME/KOB-email-verification-service" && exit 0
mkdir -p $HOME/KOB-email-verification-service
echo "Downloading necessary files..."
wget -qo $KOB_SERVICE/$KOB_NAMESPACE/KOB-email-verification/dist/dist/kob-email-latest.zip $HOME/kob-email.zip
echo "Unpacking files...."
unzip $HOME/kob-email.zip -d $HOME/KOB-email-verification-service

echo "Success"