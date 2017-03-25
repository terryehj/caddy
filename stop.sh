#!/bin/bash
eval $(ps -ef | grep caddy_linux_amd64 | grep -v grep | awk '{print "kill "$2}')
