import discord.Discord;

class Test {
	static function main() {
		Discord.create('1186993153513889792', NoRequireDiscord);

		Discord.updateActivity({
			assets: {
				largeImage: 'icon'
			}
		}, (result:DiscordResult) -> {});

		while (true)
			Discord.runCallbacks();
	}
}