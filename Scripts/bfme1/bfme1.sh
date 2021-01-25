#!/bin/bash

# BFME1 Gotchas:
#   1. Two games with the same CD Key will get a "SERIAL ALREADY IN USE" error when joining a multiplayer game
#   2. Changing registry "HKEY_LOCAL_MACHINE\Software\Wow6432Node\Electronic Arts\EA Games\The Battle for Middle-earth\ergc" to fix that gives 3 minute auto-defeat
# The solution (outlined https://www.gamereplays.org/community/index.php?showtopic=1010428) is to make copies of system.reg and LOTRBFMe.dat and give them to players
# Since LOTRBFMe.dat is small and we only need a few registry edits, we'll do that instead of full copies

if [[ $# -eq 0 ]] ; then
    echo 'First argument should be Lutris $GAMEDIR (Location containing drive_c, dosdevices, *.reg, etc..)'
    echo 'Exitng...'
    exit 0
fi

declare -r OPTIONS_COUNT=1
declare -r GAME_PATH="$1/drive_c/Program Files (x86)/EA GAMES/The Battle for Middle-earth (tm)/"

declare -r SELECTION=$(($RANDOM % OPTIONS_COUNT))

curl https://raw.githubusercontent.com/Linux-BFME/Installers/master/Scripts/bfme1/${SELECTION}/LOTRBFMe.dat -o "$GAME_PATH/LOTRBFMe.dat"
curl https://raw.githubusercontent.com/Linux-BFME/Installers/master/Scripts/bfme1/${SELECTION}/system.reg -o "$1/system.reg"
