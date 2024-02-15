package flixel.addons.plugin;

#if flixel
import discord_game_sdk.Types;
import haxe.Int64Helper;
import discord_game_sdk.Core;
import flixel.FlxBasic;

/**
 * Provides basic features of Discord GameSDK.
 */
class FlxDiscord extends FlxBasic {
	var core:Core = new Core();

	/**
	 * Starting callback.
	 */
	public var onReady:Void->Void;
	/**
	 * Error callback.
	 */
	public var onError:Result->Void;

	override function update(elapsed:Float) {
		final r:Result = core.runCallbacks();
		if (r.isError() && onError != null)
			onError(r);

		super.update(elapsed);
	}

	override function destroy() {
		super.destroy();
		core = new Core();
	}

	/**
	 * Initializes the core.
	 * @param clientID Discord application client ID.
	 * @param onReady Start callback.
	 * @param onError Error callback.
	 */
	public function start(clientID:String, onReady:Void->Void, onError:Result->Void) {
		this.onReady = onReady;
		this.onError = onError;
		Core.create(Int64Helper.parseString(clientID), NoRequireDiscord, core);
		if (onReady != null)
			onReady();
	}

	/**
	 * Updates Discord presence activity.
	 * @param activity Activity
	 */
	public function updateActivity(activity:Activity) {
		core.activityManager.updateActivity(activity, (r:Result) -> {
			if (r.isError() && onError != null)
				onError(r);
		});
	}
}
#end