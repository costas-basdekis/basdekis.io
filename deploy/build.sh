#!/bin/sh

set -e

BASEDIR=$(dirname $0)

cd $BASEDIR/..

echo 'rebuild jekyll'
jekyll build
echo 'deploy nginx'
cp deploy/nginx/basdekis.io.conf /etc/nginx/sites-available/
echo 'put webhook url'
github_webhook_url=$(cat ../github-webhook-url)
sed -i "s/{github-webhook-url}/"$github_webhook_url"/" /etc/nginx/sites-available/basdekis.io.conf
ln -sf /etc/nginx/sites-available/basdekis.io.conf /etc/nginx/sites-enabled/basdekis.io.conf
echo 'reload nginx'
nginx -t
service nginx reload

