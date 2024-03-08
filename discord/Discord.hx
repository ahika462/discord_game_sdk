package discord;

import haxe.Constraints.Function;
#if hl
import haxe.Int32 as UInt32;
import haxe.Int64 as UInt64;
#else
import cpp.UInt32;
import cpp.UInt64;
import cpp.ConstCharStar;
#end
import haxe.Int32;
import haxe.Int64;
import haxe.Int64Helper;

using discord.Utils;

class Discord {
	public static final onActivityJoin:DiscordEvent<(String)->Void, (String)->Void> = new DiscordEvent();
	public static final onActivitySpectate:DiscordEvent<(String)->Void, (String)->Void> = new DiscordEvent();
	public static final onActivityJoinRequest:DiscordEvent<(Int64, String, String, String, Bool)->Void, (DiscordUser->Void)> = new DiscordEvent();
	public static final onActivityInvite:DiscordEvent<InviteEvent, (DiscordUser, DiscordActivity)->Void> = new DiscordEvent();

	public static function create(clientID:String, flags:DiscordCreateFlags = Default):DiscordResult {
		final result:DiscordResult = DiscordExterns.create(Int64Helper.parseString(clientID), flags).toResult();
		if (result != Ok)
			return result;

		onActivityJoin.trigger = (secret:String) -> {
			for (slot in onActivityJoin.slots)
				slot(secret);
		};
		DiscordExterns.on_activity_join(onActivityJoin.trigger);
		onActivitySpectate.trigger = (secret:String) -> {
			for (slot in onActivitySpectate.slots)
				slot(secret);
		};
		DiscordExterns.on_activity_spectate(onActivitySpectate.trigger);
		onActivityJoinRequest.trigger = (id:Int64, username:String, discriminator:String, avatar:String, bot:Bool) -> {
			for (slot in onActivityJoinRequest.slots)
				slot({
					id: Std.string(id),
					username: username,
					discriminator: discriminator,
					avatar: avatar,
					bot: bot
				});
		};
		/*DiscordExterns.on_activity_join_request(onActivityJoinRequest.trigger);
		onActivityInvite.trigger = (userID:Int64, username:ConstCharStar, userDiscriminator:ConstCharStar, userAvatar:ConstCharStar, userBot:Bool, activityType:DiscordActivityType, applicationID:Int64, activityName:ConstCharStar, activityState:ConstCharStar, activityDetails:ConstCharStar, startTimestamp:Int64, endTimestamp:Int64, assetsLargeImage:ConstCharStar, assetsLargeText:ConstCharStar, assetsSmallImage:ConstCharStar, assetsSmallText:ConstCharStar, partyID:ConstCharStar, partySize:Int32, partyMax:Int32, partyPrivacy:DiscordActivityPartyPrivacy, matchSecret:ConstCharStar, joinSecret:ConstCharStar, spectateSecret:ConstCharStar,activityInstance:Bool, activitySupportedPlatforms:DiscordActivitySupportedPlatformFlags) -> {
			for (slot in onActivityInvite.slots)
				slot({
					id: Std.string(userID),
					username: username,
					discriminator: userDiscriminator,
					avatar: userAvatar,
					bot: userBot
				}, {
					type: activityType,
					applicationID: Std.string(applicationID),
					name: activityName,
					state: activityState,
					details: activityDetails,
					timestamps: {
						start: startTimestamp,
						end: endTimestamp
					},
					assets: {
						largeImage: assetsLargeImage,
						largeText: assetsLargeText,
						smallImage: assetsSmallImage,
						smallText: assetsSmallText
					},
					party: {
						id: partyID,
						size: {
							current: partySize,
							max: partyMax
						},
						privacy: partyPrivacy,
					},
					secrets: {
						match: matchSecret,
						join: joinSecret,
						spectate: spectateSecret
					},
					instance: activityInstance,
					supportedPlatforms: activitySupportedPlatforms
				});
		}
		DiscordExterns.on_activity_invite(onActivityInvite.trigger);*/

		return result;
	}

	public static function runCallbacks():DiscordResult {
		return DiscordExterns.run_callbacks().toResult();
	}

	public static function registerCommand(command:String):DiscordResult {
		return DiscordExterns.register_command(new ConstCharStar(command)).toResult();
	}

	public static function registerSteam(steamID:String):DiscordResult {
		return DiscordExterns.register_steam(Int64Helper.parseString(steamID).low).toResult();
	}

	public static function updateActivity(activity:DiscordActivity, callback:ResultCallback) {
		DiscordExterns.update_activity(activity.type, Int64Helper.parseString(activity.applicationID),
		new ConstCharStar(activity.name), new ConstCharStar(activity.state), new ConstCharStar(activity.details),
		activity.timestamps.start, activity.timestamps.end,
		new ConstCharStar(activity.assets.largeImage), new ConstCharStar(activity.assets.largeText), new ConstCharStar(activity.assets.smallImage), new ConstCharStar(activity.assets.smallText),
		new ConstCharStar(activity.party.id), activity.party.size.current, activity.party.size.max,
		new ConstCharStar(activity.secrets.match), new ConstCharStar(activity.secrets.join), new ConstCharStar(activity.secrets.spectate),
		activity.instance,
		(result:Int) -> callback(result.toResult()));
	}

	public static function clearActivity(callback:ResultCallback) {
		DiscordExterns.clear_activity((result:Int) -> callback(result.toResult()));
	}

	public static function sendRequestReply(userID:String, reply:DiscordActivityJoinRequestReply, callback:ResultCallback) {
		DiscordExterns.send_request_reply(Int64Helper.parseString(userID), reply, (result:Int) -> callback(result.toResult()));
	}

	public static function sendInvite(userID:String, type:DiscordActivityActionType, content:String, callback:ResultCallback) {
		DiscordExterns.send_invite(Int64Helper.parseString(userID), type, new ConstCharStar(content), (result:Int) -> callback(result.toResult()));
	}

	public static function acceptInvite(userID:String, callback:ResultCallback) {
		DiscordExterns.accept_invite(Int64Helper.parseString(userID), (result:Int) -> callback(result.toResult()));
	}
}

@:keep
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('discord_game_sdk'))
#end
@:include('linc_discord_game_sdk.h')
private extern class DiscordExterns {
	@:native('linc::discord_game_sdk::create')
	static function create(clientID:Int64, flags:DiscordCreateFlags):Int;
	@:native('linc::discord_game_sdk::run_callbacks')
	static function run_callbacks():Int;

	@:native('linc::discord_game_sdk::register_command')
	static function register_command(command:ConstCharStar):Int;
	@:native('linc::discord_game_sdk::register_steam')
	static function register_steam(steamID:UInt32):Int;
	@:native('linc::discord_game_sdk::update_activity')
	static function update_activity(type:DiscordActivityType, applicationID:Int64,
	name:ConstCharStar, state:ConstCharStar, details:ConstCharStar,
	startTimestamp:Int64, endTimestamp:Int64,
	largeImage:ConstCharStar, largeText:ConstCharStar, smallImage:ConstCharStar, smallText:ConstCharStar,
	partyID:ConstCharStar, partySize:Int32, partyMax:Int32,
	matchSecret:ConstCharStar, joinSecret:ConstCharStar, spectateSecret:ConstCharStar,
	instance:Bool,
	callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::clear_activity')
	static function clear_activity(callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::send_request_reply')
	static function send_request_reply(userID:Int64, reply:DiscordActivityJoinRequestReply, callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::send_invite')
	static function send_invite(userID:Int64, type:DiscordActivityActionType, content:ConstCharStar, callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::accept_invite')
	static function accept_invite(userID:Int64, callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::on_activity_join')
	static function on_activity_join(callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::on_activity_spectate')
	static function on_activity_spectate(callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::on_activity_join_request')
	static function on_activity_join_request(callback:Dynamic):Void;
	@:native('linc::discord_game_sdk::on_activity_invite')
	static function on_activity_invite(callback:Dynamic):Void;
}

typedef ResultCallback = (DiscordResult)->Void;
typedef InviteEvent = (Int64, ConstCharStar, ConstCharStar, ConstCharStar, Bool,
DiscordActivityType, Int64,
ConstCharStar, ConstCharStar, ConstCharStar,
Int64, Int64,
ConstCharStar, ConstCharStar, ConstCharStar, ConstCharStar,
ConstCharStar, Int32, Int32, ConstCharStar, ConstCharStar, ConstCharStar,
Bool)->Void;

enum DiscordResult {
	Ok;
	Error(code:Int, message:String);
}

/*enum abstract DiscordResult(Int) from Int to Int {
	var Ok = 0;
	var ServiceUnavailable = 1;
	var InvalidVersion = 2;
	var LockFailed = 3;
	var InternalError = 4;
	var InvalidPayload = 5;
	var InvalidCommand = 6;
	var InvalidPermissions = 7;
	var NotFetched = 8;
	var NotFound = 9;
	var Conflict = 10;
	var InvalidSecret = 11;
	var InvalidJoinSecret = 12;
	var NoEligibleActivity = 13;
	var InvalidInvite = 14;
	var NotAuthenticated = 15;
	var InvalidAccessToken = 16;
	var ApplicationMismatch = 17;
	var InvalidDataUrl = 18;
	var InvalidBase64 = 19;
	var NotFiltered = 20;
	var LobbyFull = 21;
	var InvalidLobbySecret = 22;
	var InvalidFilename = 23;
	var InvalidFileSize = 24;
	var InvalidEntitlement = 25;
	var NotInstalled = 26;
	var NotRunning = 27;
	var InsufficientBuffer = 28;
	var PurchaseCanceled = 29;
	var InvalidGuild = 30;
	var InvalidEvent = 31;
	var InvalidChannel = 32;
	var InvalidOrigin = 33;
	var RateLimited = 34;
	var OAuth2Error = 35;
	var SelectChannelTimeout = 36;
	var GetGuildTimeout = 37;
	var SelectVoiceForceRequired = 38;
	var CaptureShortcutAlreadyListening = 39;
	var UnauthorizedForAchievement = 40;
	var InvalidGiftCode = 41;
	var PurchaseError = 42;
	var TransactionAborted = 43;
}*/

enum abstract DiscordCreateFlags(UInt64) from UInt64 to UInt64 {
	var Default = 0;
	var NoRequireDiscord = 1;
}

@:structInit @:publicFields class DiscordActivity {
	var type:DiscordActivityType = Playing;
	var applicationID:String = '';
	var name:String = '';
	var state:String = '';
	var details:String = '';
	var timestamps:DiscordActivityTimestamps = {};
	var assets:DiscordActivityAssets = {};
	var party:DiscordActivityParty = {};
	var secrets:DiscordActivitySecrets = {};
	var instance:Bool = false;
	#if (DISCORD_VERSION >= "3.2.1")
	var supportedPlatforms:DiscordActivitySupportedPlatformFlags = Desktop;
	#end
}

enum abstract DiscordActivityType(Int) from Int to Int {
	var Playing;
	var Streaming;
	var Listening;
	var Watching;
}

@:structInit @:publicFields class DiscordActivityTimestamps {
	var start:Int64 = 0;
	var end:Int64 = 0;
}

@:structInit @:publicFields class DiscordActivityAssets {
	var largeImage:String = '';
	var largeText:String = '';
	var smallImage:String = '';
	var smallText:String = '';
}

@:structInit @:publicFields class DiscordActivityParty {
	var id:String = '';
	var size:DiscordPartySize = {};
}

@:structInit @:publicFields class DiscordPartySize {
	var current:Int32 = 0;
	var max:Int32 = 0;
}

@:structInit @:publicFields class DiscordActivitySecrets {
	var match:String = '';
	var join:String = '';
	var spectate:String = '';
}

#if (DISCORD_VERSION >= "3.2.1")
enum abstract DiscordActivitySupportedPlatformFlags(UInt32) from UInt32 to UInt32 {
	var Desktop = 1;
	var Android = 2;
	var iOS = 4;
}
#end

enum abstract DiscordActivityJoinRequestReply(Int) from Int to Int {
	var No;
	var Yes;
	var Ignore;
}

enum abstract DiscordActivityActionType(Int) from Int to Int {
	var Join = 1;
	var Spectate;
}

private class DiscordEvent<E:Function, C:Function> {
	@:allow(discord.Discord)
	var slots:Array<C> = [];
	@:allow(discord.Discord)
	var trigger:E;

	public function new() {}

	public function connect(slot:C):Int {
		slots.push(slot);
		return slots.length - 1;
	}

	public function disconnect(token:Int) {
		slots.remove(slots[token]);
	}

	public function disconnectAll() {
		slots = [];
	}
}

@:structInit @:publicFields class DiscordUser {
	var id:String;
	var username:String;
	var discriminator:String;
	var avatar:String;
	var bot:Bool;
}