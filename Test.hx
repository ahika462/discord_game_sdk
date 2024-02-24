import discord.Types;
import haxe.Int64Helper;
import discord.Core;

class Test {
	static function main() {
		var core:Core = new Core();
		Core.create(Int64Helper.parseString('1186993153513889792'), cast CreateFlags.NoRequireDiscord, core);
		core.activityManager.updateActivity({
			details: '',
			assets: {
				largeImage: 'icon'
			}
		}, (result:Result) -> trace(result));

		while (true) {
			final result:Result = core.runCallbacks();
			if (result != Ok)
				trace(result);
		}
	}
}