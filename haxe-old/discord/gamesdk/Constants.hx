package discord.gamesdk;

@:build(discord.linc.Linc.xml('discord_game_sdk', #if cpp 'cpp' #elseif cs 'csharp' #else 'unknown' #end))
class Constants {
	public static inline var xmlName:String = 'discord_game_sdk'; // idk how to use it XD
}