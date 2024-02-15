package openfl.utils;

#if openfl
import haxe.Int64Helper;
import openfl.events.DiscordEvent;
import openfl.events.Event;
import discord_game_sdk.Types;
import discord_game_sdk.Core;
import openfl.display.Sprite;

/**
 * Provides basic features of Discord GameSDK. (I DIDN'T TEST IT)
 */
class DiscordClient extends Sprite {
	var core:Core = new Core();

	function enterFrame(e:Event) {
		final r:Result = core.runCallbacks();
		if (r.isError())
			dispatchEvent(new DiscordEvent(DiscordEvent.ERROR, r));
	}

	public function reset() {
		core = new Core();
	}

	public function new() {
		Lib.current.addEventListener(Event.ENTER_FRAME, enterFrame);
	}

	/**
	 * Initializes the core.
	 * @param clientID  Discord application client ID.
	 */
	public function start(clientID:String) {
		Core.create(Int64Helper.parseString(clientID), NoRequireDiscord, core);
		dispatchEvent(new DiscordEvent(DiscordEvent.READY, Ok));
	}

	/**
	 * Updates Discord presence activity.
	 * @param activity Activity
	 */
	public function updateActivity(activity:Activity) {
		core.activityManager.updateActivity(activity, (r:Result) -> {
			if (r.isError())
				dispatchEvent(new DiscordEvent(DiscordEvent.ERROR, r));
		});
	}
}
#end