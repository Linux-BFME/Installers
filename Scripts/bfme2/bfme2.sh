#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'First argument should be Lutris $GAMEDIR (Location containing drive_c, dosdevices, *.reg, etc..)'
    echo 'Exiting...'
    exit 0
fi

declare -r OPTIONS_COUNT=2
declare -r GAME_PATH="$1/drive_c/Program Files (x86)/Electronic Arts/The Battle for Middle-earth (tm) II/"

declare -r SELECTION=$(($RANDOM % OPTIONS_COUNT))

curl https://raw.githubusercontent.com/Linux-BFME/Installers/master/Scripts/bfme2/options/${SELECTION}/LOTRBFMe.dat -o "$GAME_PATH/gi.dat"
curl https://raw.githubusercontent.com/Linux-BFME/Installers/master/Scripts/bfme2/options/${SELECTION}/LOTRBFMe.dat -o "$GAME_PATH/game2.dat"
curl https://raw.githubusercontent.com/Linux-BFME/Installers/master/Scripts/bfme2/options/${SELECTION}/system.reg -o "$1/system.reg"
