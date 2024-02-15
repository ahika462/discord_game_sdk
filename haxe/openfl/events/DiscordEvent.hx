package openfl.events;

#if openfl
import discord_game_sdk.Types.Result;

class DiscordEvent extends Event {
	public static inline var READY:EventType<DiscordEvent> = 'DiscordGameSDK_Ready';
	public static inline var ERROR:EventType<DiscordEvent> = 'DiscordGameSDK_Error';

	public var result:Result;

	public function new(type:String, bubbles:Bool = false, cancelable:Bool = false, result:Result) {
		super(type, bubbles, cancellable);
		this.result = result;
	}
}
#end