#!/bin/bash
cd ./deploy

git config --global push.default matching
git config --global user.email "${GITHUB_MAIL}"
git config --global user.name "${GITHUB_USER}"

git remote add push https://${GITHUB_TOKEN}@github.com/sspanel-uim/ssr-download.git

git add --all .
git commit -m "By SSPanel UIM Client Auto Updater"
git push --quiet push
