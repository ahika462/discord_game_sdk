import discord_game_sdk.Types;
import haxe.Int64Helper;
import discord_game_sdk.Core;

class Main {
	static function main() {
		var clientID:String = '1207563784365805618';
		var core:Core = new Core();
		Core.create(Int64Helper.parseString(clientID), NoRequireDiscord, core);
		core.setLogHook(Debug, (level:LogLevel, message:String) -> trace('Log[$level] $message'));

		var activity:Activity = {
			details: 'Fruit Tarts',
			state: 'Pop Snacks',
			assets: {
				smallImage: 'the',
				smallText: 'i mage',
				largeImage: 'the',
				largeText: 'u mage'
			},
			secrets: {
				join: 'join secret'
			},
			party: {
				size: {
					currentSize: 1,
					maxSize: 5
				},
				id: 'party id',
				privacy: Public
			},
			type: Playing
		};
		core.activityManager.updateActivity(activity, (r:Result) -> trace('${(r == Ok) ? 'Succeeded' : 'Failed'} updating activity!'));

		while (true)
			core.runCallbacks();
	}
}