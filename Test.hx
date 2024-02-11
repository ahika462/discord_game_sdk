import sys.thread.Thread;
import haxe.Int64Helper;
import discord_game_sdk.Types;
import discord_game_sdk.Core;

class Test {
	static function main() {
		var core:Core = new Core();
		var r:Result = Core.create(Int64Helper.parseString('418559331265675294'), NoRequireDiscord, core);
		trace('Created with ${Result.list[r]}');
		if (r != Ok)
			return;

		core.setLogHook(Debug, (level:LogLevel, message:String) -> trace('[${['ERROR', 'WARN ', 'INFO ', 'DEBUG'][level - 1]}] $message'));

		var activity:Activity = {
			type: Listening,
			applicationId: Int64Helper.parseString('418559331265675294'),
			assets: {
				largeImage: 'the',
				largeText: 'u nage',
				smallImage: 'the',
				smallText: 'i mage'
			},
			timestamps: {
				start: Int64Helper.fromFloat(Date.now().getTime() / 1000)
			},
			instance: true
		};

		core.activityManager.updateActivity(activity, (r:Result) -> trace('Updated with ${Result.list[r]}'));
		// core.activityManager.clearActivity((r:Result) -> {});

		trace(core.applicationManager.getCurrentLocale());
	
		while (true) {
			var r:Result = core.runCallbacks();
			if (r != Ok)
				return trace(Result.list[r]);

			Sys.sleep(0.4);
		}
	}
}