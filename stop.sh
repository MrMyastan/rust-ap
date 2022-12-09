#!/bin/bash

#screen -S mcpublic -p 0 -X stuff "stop^M"
#while screen -list | grep -q mcpublic
#do
#    sleep 1
#done
cat PIDFILE | xargs kill
