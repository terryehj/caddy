#!/bin/bash
cd `dirname $0`
eval $(ps -ef | grep caddy_linux_amd64 | grep -v grep | awk '{print "kill "$2}')
ulimit -n 8192
nohup ./caddy_linux_amd64 >> caddy.log 2>&1 &
