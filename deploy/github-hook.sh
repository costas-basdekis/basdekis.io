#!/bin/sh

BASEDIR=$(dirname $0)

sh $BASEDIR/pull-and-build.sh ||
sh $BASEDIR/email-on-error.sh

