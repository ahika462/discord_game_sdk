package flixel.addons.plugin;

#if flixel
import discord_game_sdk.Types;
import haxe.Int64Helper;
import discord_game_sdk.Core;
import flixel.FlxBasic;

/**
 * Provides basic features of Discord Game SDK.
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
		if (isError(r) && onError != null)
			onError(r);

		core.runCallbacks();
		super.update(elapsed);
	}

	override function destroy() {
		super.destroy();
		core = null;
	}

	/**
	 * Initializes the core.
	 * @param clientID Discord application ID.
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
	 * @param activity 
	 */
	public function updateActivity(activity:Activity) {
		core.activityManager.updateActivity(activity, (r:Result) -> {
			if (isError(r) && onError != null)
				onError(r);
		});
	}

	static inline function isError(r:Result):Bool {
		return (r != Ok && r != NotRunning && r != NotInstalled && r != NotAuthenticated);
	}
}
#end