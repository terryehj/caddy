#!/bin/bash
ps -ef | grep caddy_linux_amd64 | grep -v grep | awk '{print $2}' | xargs kill -9
