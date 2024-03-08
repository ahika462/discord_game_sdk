package discord;

import discord.Discord;

class DiscordAsRpc {
	public static var onReady:()->Void;
	public static var onDisconnected:(Int, String)->Void;
	public static var onError:(Int, String)->Void;
	public static var onJoin:(String)->Void;
	public static var onSpectate:(String)->Void;
	public static var onRequest:(JoinRequest)->Void;

	public static function start(options:DiscordStartOptions) {
		onReady = options.onReady ?? () -> {};
		onDisconnected = options.onDisconnected ?? (code:Int, message:String) -> {};
		onError = options.onError ?? (code:Int, message:String) -> {};
		onJoin = options.onJoin ?? (secret:String) -> {};
		onSpectate = options.onSpectate ?? (secret:String) -> {};
		onRequest = options.onRequest ?? (request:JoinRequest) -> {};

		Discord.create(options.clientID, NoRequireDiscord);

		if (options.steamAppID != null)
			Discord.registerSteam(options.steamAppID);
	}

	static var lastResult(default, set):DiscordResult = Ok;
	static function set_lastResult(v) {
		switch(v) {
			case Ok:
				return lastResult = v;

			case Error(code, message):
				if (code == 26 || code == 27 || code == 43)
					onDisconnected(code, message);
				else
					onError(code, message);
				return lastResult = v;
		}
	}

	public static function process() {
		lastResult = Discord.runCallbacks();
	}

	public static function respond(userID:String, response:Reply) {
		Discord.sendRequestReply(userID, cast response, (result:DiscordResult) -> lastResult = result);
	}

	public static function presence(options:DiscordPresenceOptions) {
		Discord.updateActivity({
			state: options.state,
			details: options.details,
			timestamps: {
				start: options.startTimestamp,
				end: options.endTimestamp
			},
			assets: {
				largeImage: options.largeImageKey,
				largeText: options.largeImageText,
				smallImage: options.smallImageKey,
				smallText: options.smallImageText
			},
			party: {
				id: options.partyID,
				size: {
					current: options.partySize,
					max: options.partyMax
				}
			},
			secrets: {
				match: options.matchSecret,
				join: options.joinSecret,
				spectate: options.spectateSecret
			},
			instance: options.instance == 1
		}, (result:DiscordResult) -> lastResult = result);
	}

	public static function shutdown() {
		// trace('fuck u');
	}
}

typedef JoinRequest = {
	var userId:String;
	var username:String;
	var discriminator:String;
	var avatar:String;
}

typedef DiscordStartOptions = {
	var clientID:String;
	var ?steamAppID:String;
	var ?onReady:()->Void;
	var ?onDisconnected:(Int, String)->Void;
	var ?onError:(Int, String)->Void;
	var ?onJoin:(String)->Void;
	var ?onSpectate:(String)->Void;
	var ?onRequest:(JoinRequest)->Void;
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

enum abstract Reply(Int) from Int to Int {
	var No;
	var Yes;
	var Ignore;
}