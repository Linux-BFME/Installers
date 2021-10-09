### Will you support Windows/MacOS?
* Only if Lutris adds support for them
### Does Network play work?
* Yes, if you get "SERIAL IN USE" error, get one person to reinstall. See details [here](https://github.com/Linux-BFME/Installers/blob/master/Scripts/README.md)
### Does Online play work?
* No because Gameranger doesn't support Linux yet. I'll add Gameranger to the installs when that happens. Also T3A doesn't work on Linux but I'll keep my eyes peeled for that.
### Why not put these install scripts on Lutris?
* Lutris doesn't allow install scripts to have game data (even the ISOs). I'm also the author of the BFME script on Lutris right now, but it's only as good as they'll let me make it.
### Will you add support for X mod?
* Probably not, but feel free to ask
### Exception Access Violation:
* Shouldn't happen. If you can consistently reproduce it, let me know what you did & your wine version.
### I'm having an issue not mentioned in this FAQ
* It's probably a regular BFME issue. Google around or ask in support groups for the specific issue you're having.
### Lag
* Note: Mods (*especially* AOTR) are very high quality, intensive games. You need seriously good computers to run them.
* Reduce graphics to a minimum
* Reduce the game Resolution to a minimum (Options > Resolution > 800x600)
* Try enabling DXVK in Lutris (Right click Game > Configure > Runner Options > Enable DXVK/VKD3D)
* Get a better PC
### In Network lobby I don't see other people on my LAN
* BFME only looks for LAN in the first network device you see
* On Linux, typing `ip addr` will show your network devices (`ipconfig` will do it on Windows)
* To fix this, you must DELETE the network devices (links) that could be the culprit
* See this answer on Askubuntu on how to do that (works on Arch derivatives too): https://askubuntu.com/a/1313475/911142
### After playing for 3 minutes, I instantly lose
* This shouldn't happen, but if it does:
* Please create an issue reporting which game you're experiencing the issue on
* Attach your `LOTRBFMe.dat` file for BFME1, or `game2.dat` file for BFME2
* To learn more about why this happens, see [here](https://github.com/Linux-BFME/Installers/tree/master/Scripts)
### BFME: I'm playing multiplayer and I'm getting "Game out of Synch" (Game out of Sync)
* If you're playing LAN, make sure you're all connected to the same Network Switch/Router (not some people on Wifi, some wired into router, some wired into a network switch into a router)
### BFME II: I'm playing multiplayer and I'm getting "Game out of Synch" (Game out of Sync)
* Delete mapcache.ini
* See LAN notes from BFME
### BFME RotWK: I'm playing multiplayer and I'm getting "Game out of Synch" (Game out of Sync)
* Make sure you're on the latest patch (Ring heros caused OOS in earlier patches)
* Delete mapcache.ini
* See LAN notes from BFME

### I have another question
Ask me
