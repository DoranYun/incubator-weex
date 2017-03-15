#!/bin/bash

WEB_PATH='/var/www/html'
SOURCE_PATH='/usr/src/weex'
 
echo "Start deployment"
cd $SOURCE_PATH
echo "pulling source code..."
git chechout feature-mirror-site
git pull origin feature-mirror-site
git checkout feature-mirror-site
cd doc
npm install
hexo clean
hexo g
cp -R public $WEB_PATH
echo "Finished."