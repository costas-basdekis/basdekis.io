#!/bin/sh

BASEDIR=$(dirname $0)
LOGDIR=$BASEDIR/../../logs

sh $BASEDIR/pull-and-build.sh > $LOGDIR/last-build.log  2>&1 ||
sh $BASEDIR/email-on-error.sh
echo '************************************' >> $LOGDIR/builds.log
cat $LOGDIR/last-build.log >> $LOGDIR/builds.log
