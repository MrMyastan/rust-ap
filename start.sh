#!/bin/sh

#screen -dmS mcpublic java -Dlog4j2.formatMsgNoLookups=true -Xms2G -Xmx2G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -jar /home/minecraft/mcpublic/paper-1.18.1-101.jar
./server > log.txt &
echo $! > PIDFILE
