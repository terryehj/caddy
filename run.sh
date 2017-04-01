#!/bin/bash
cd `dirname $0`
ps -ef | grep caddy_linux_amd64 | grep -v grep | awk '{print $2}' | xargs kill -9
ulimit -n 8192
./caddy_linux_amd64 &> caddy.log &
