# Game Launcher Handler
Do you like having all your games in one place? Inside one program, such as Steam?

Do you like using Steam Big Picture to play on the couch where the keyboard and mouse is out of reach?

Do you NOT like having other launcher programs like Uplay and Origin running in the background after you exit the game that required it?

Well this little .bat script might be useful to you.

This script will launch your game, which should also launch the needed launcher (such as Origin or Uplay), then it will run in the background while you play your game. Once it detects that the game's process is no longer running, it will wait 4 seconds (although you can edit this time) before killing the launcher process that you specify. This will also work with Steam games that come bundled with another launcher such as Assasin's Creed 2.


# How To Use It
Simply edit the top section of the .bat file with your necessary parameters. Be careful not to remove any quotation marks! 
You need to supply: 
* The full path to the game's .exe file
* The game's process name
* The launcher's process name

The game's process name should be the same as it's .exe filename, but sometimes games have multiple .exe files. You can open task manager while the game is running to double check.

The launcher's process name should also be the same as it's .exe filename, but you can also open task manager while the launcher is running to double check.
* Origin = Origin.exe
* Uplay = upc.exe
Note that this did NOT work with Epic Games Launcher the last time I tried it, and it probably still doesn't. I don't use EGS anymore so it doesn't affect me.

After you've edited the .bat file to your needs and renamed it to your game's title, you can convert your .bat file to an .exe file using a converter ([like this one](https://www.majorgeeks.com/files/details/bat_to_exe_converter.html)). Then, you can add that .exe file into Steam as a non-Steam game or into whatever launcher you choose.
