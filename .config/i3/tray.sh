#!/bin/bash

pkill -f nm-applet
pkill -f parcellite
pkill -f pasystray

nm-applet & # network
parcellite & # clipboard
pasystray & # audio
