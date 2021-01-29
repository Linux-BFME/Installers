BFME Gotchas:
   1. Two games with the same CD Key will get a "SERIAL ALREADY IN USE" error when joining a multiplayer game
   2. Changing registry "HKEY_LOCAL_MACHINE\Software\Wow6432Node\Electronic Arts\EA Games\The Battle for Middle-earth\ergc" to fix that gives 3 minute auto-defeat

The solution (outlined https://www.gamereplays.org/community/index.php?showtopic=1010428) is to make copies of system.reg and LOTRBFMe.dat (game2.dat for BFME II/RotWK) and give them to players (Ok that's not the only solution). That's what these scripts do :)

*****

Given that the script grabs a random copy, the chances of 2+ players having a conflict is listed below. [(Math)](https://www.desmos.com/calculator/j1eo34cgon)

|             Game | Copies | 2 player game | 8 player game |
| ---------------- | ------ | ------------- | ------------- |
| BFME (and mods)  |     23 |          4.5% |         76.5% |
| BFME II          |      2 |           50% |           N/A |
| RotWK (and mods) |      8 |         12.5% |         99.7% |

If these numbers look bad, consider:
* I don't have time to generate 1000s of these files (by hand)
  * At that point it's probably easier to figure out a better solution
* Not everyone playing will use this installer
  * If they do use this installer, it will be relatively trivial to determine who has duplicate keys
  * At that point you can just copy the unique files in yourself
  * Maybe one day I'll make a launcher where you can choose which key to use (using Lutris' `input_menu`)
