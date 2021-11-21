#!/bin/bash

set -e

scriptdir="`dirname \"$0\"`"
cd $scriptdir
mkdir /tmp/$$
echo /tmp/$$
cp -r data /tmp/$$
cd /tmp/$$
mv data humans-by-user-group
tar czf humans-by-user-group.tar.gz humans-by-user-group
rm -rf /srv/published/datasets/one-off/urbanecm/humans-by-user-group
cp -r /tmp/$$/humans-by-user-group /srv/published/datasets/one-off/urbanecm/humans-by-user-group
rm -f /srv/published/datasets/one-off/urbanecm/humans-by-user-group/.gitkeep
cp /tmp/$$/humans-by-user-group.tar.gz /srv/published/datasets/one-off/urbanecm/humans-by-user-group.tar.gz
rm -rf /tmp/$$
