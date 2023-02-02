#!/bin/sh

SEP="|"

sleep 3s

while :; do

	xsetroot -name "  $(sensors | grep CPU | tr -d [A-Z:+] | tr -d [:space:])  $SEP  $(cat /sys/class/power_supply/BAT0/capacity)%  $SEP  $(date +"%R")  $SEP  $(date +"%b %d %Y") "

	sleep 1m
done
