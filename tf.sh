#!/bin/sh

CFG="$SERVER/tf2/tf/cfg/server.cfg"

# Configure server from ENV

echo "hostname \"${NAME:-'Spire Server'}\"" >> $CFG
echo "sv_password \"${PASSWORD:-'password'}\"" >> $CFG
echo "rcon_password \"${RCON_PASSWORD:-'rcon'}\"" >> $CFG
echo "sm_webrcon_key \"${WEBRCON_PASSWORD:-${RCON_PASSWORD:-'rcon'}}\"" >> $CFG
echo "logstf_apikey \"${LOGSTF_APIKEY}\"" >> $CFG
echo "exec ${CONFIG:-etf2l_6v6_5cp}" >> $CFG

cd $HOME/hlserver
tf2/srcds_run -game tf -autoupdate -steam_dir ~/hlserver -steamcmd_script ~/hlserver/tf2_ds.txt +map ${MAP:-'cp_badlands'} $@
