package discord_game_sdk;

import haxe.Int64Helper;
import discord_game_sdk.Types;

/**
 * Bindings for fast using Discord GameSDK. (you can use it like discord_rpc)
 */

@:build(discord_game_sdk.linc.Linc.touch())
@:build(discord_game_sdk.linc.Linc.xml('discord_game_sdk'))

class DiscordGameSDK {
	static var core:Core = new Core();

	public static var onReady:Void->Void;
	public static var onError:Int->String->Void;

	public static var onJoin:String->Void;
	public static var onSpectate:String->Void;
	public static var onRequest:JoinRequest->Void;

	public static function start(_options:DiscordStartOptions) {
		var r:Result = Core.create(Int64Helper.parseString(_options.clientID), NoRequireDiscord, core);
		if (r.isError() && _options.onError != null)
			_options.onError(r, Result.list[r]);
		if (_options.steamAppID != null) {
			r = core.activityManager.registerSteam(Std.parseInt(_options.steamAppID));
			if (r.isError() && _options.onError != null)
				_options.onError(r, Result.list[r]);
		}
		onReady = _options.onReady;
		onError = _options.onError;
		onJoin = _options.onJoin;
		onSpectate = _options.onSpectate;
		onRequest = _options.onRequest;
	}

	public static function process() {
		var r:Result = core.runCallbacks();
		if (r.isError() && onError != null)
			onError(r, Result.list[r]);
	}

	public static function respond(_userID:String, _response:ActivityJoinRequestReply) {
		core.activityManager.sendRequestReply(Int64Helper.parseString(_userID), _response, (r:Result) -> {
			if (r.isError() && onError != null)
				onError(r, Result.list[r]);
		});
	}

	public static function presence(_options:DiscordPresenceOptions) {
		core.activityManager.updateActivity({
			state: _options.state,
			details: _options.details,
			timestamps: {
				start: _options.startTimestamp,
				end: _options.endTimestamp
			},
			assets: {
				largeImage: _options.largeImageKey,
				largeText: _options.largeImageText,
				smallImage: _options.smallImageKey,
				smallText: _options.smallImageText
			},
			party: {
				id: _options.partyID,
				size: {
					currentSize: _options.partySize,
					maxSize: _options.partyMax
				}
			},
			secrets: {
				match: _options.matchSecret,
				join: _options.joinSecret,
				spectate: _options.spectateSecret
			},
			instance: _options.instance == 1
		}, (r:Result) -> {
			if (r.isError() && onError != null)
				onError(r, Result.list[r]);
		});
	}

	/**
	 * crashes game lol
	 */
	public static function shutdown() {
		core = new Core();
	}
}

class JoinRequest {
	public var userId:String;
	public var username:String;
	public var discriminator:String;
	public var avatar:String;
}

typedef DiscordStartOptions = {
	var clientID:String;
	var ?steamAppID:String;
	var ?onReady:Void->Void;
	var ?onError:Int->String->Void;
	var ?onJoin:String->Void;
	var ?onSpectate:String->Void;
	var ?onRequest:JoinRequest->Void;
}

typedef DiscordPresenceOptions = {
	var ?state:String;
	var ?details:String;
	var ?startTimestamp:Int;
	var ?endTimestamp:Int;
	var ?largeImageKey:String;
	var ?largeImageText:String;
	var ?smallImageKey:String;
	var ?smallImageText:String;
	var ?partyID:String;
	var ?partySize:Int;
	var ?partyMax:Int;
	var ?matchSecret:String;
	var ?spectateSecret:String;
	var ?joinSecret:String;
	var ?instance:Int;
}