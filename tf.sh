#!/bin/sh

CFG="$SERVER/tf2/tf/cfg/server.cfg"

# Configure server from ENV

echo "hostname \"${NAME:-"Spire Server"}\"" >> $CFG
echo "sv_password \"${PASSWORD:-password}\"" >> $CFG
echo "rcon_password \"${RCON_PASSWORD:-rcon}\"" >> $CFG
echo "sm_webrcon_key \"${WEBRCON_PASSWORD:-${RCON_PASSWORD:-rcon}}\"" >> $CFG
echo "sm_demostf_apikey \"${DEMOSTF_APIKEY}\"" >> $CFG
echo "logstf_apikey \"${LOGSTF_APIKEY}\"" >> $CFG
echo "sm_autoexec_league ${CONFIG_LEAGUE:-etf2l}" >> $CFG
echo "sm_autoexec_mode ${CONFIG_MODE:-6v6}" >> $CFG
echo "tv_name \"${TV_NAME:-"${NAME:-"Spire Server"} TV"}\"" >> $CFG
echo "${EXTRA_CFG}" >> $CFG

cd $HOME/hlserver
tf2/srcds_run -game tf -autoupdate -steam_dir ~/hlserver -tickrate 120 -steamcmd_script ~/hlserver/tf2_ds.txt -enablefakeip +map ${MAP:-cp_badlands} $@
