#!/bin/bash

gh codespace ports visibility 443:public 8080:public -c $CODESPACE_NAME

nohup /usr/local/bin/start-xray.sh > /tmp/xray.log 2>&1 &
nohup /usr/local/bin/start-admin.sh > /tmp/admin.log 2>&1 &