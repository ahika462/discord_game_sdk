package discord.gamesdk;

import discord.gamesdk.Constants;
import haxe.Int64;
/*#if cpp
import cpp.Int64;
#elseif cs
import cs.system.Int64;
#end*/
 
enum abstract Result(Int) {
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
	var DrawingInitFailed = 44;
}

enum abstract CreateFlags(Int) {
	var Default = 0;
	var NoRequireDiscord = 1;
}

enum abstract LogLevel(Int) {
	var Error = 1;
	var Warn;
	var Info;
	var Debug;
}

enum abstract UserFlag(Int) {
	var Partner = 2;
	var HypeSquadEvents = 4;
	var HypeSquadHouse1 = 64;
	var HypeSquadHouse2 = 128;
	var HypeSquadHouse3 = 256;
}

enum abstract PremiumType(Int) {
	var None = 0;
	var Tier1 = 1;
	var Tier2 = 2;
}

enum abstract ImageType(Int) {
	var User;
}

enum abstract ActivityPartyPrivacy(Int) {
	var Private = 0;
	var Public = 1;
}

enum abstract ActivityType(Int) {
	var Playing;
	var Streaming;
	var Listening;
	var Watching;
}

enum abstract ActivityActionType(Int) {
	var Join = 1;
	var Spectate;
}

enum abstract ActivitySupportedPlatformFlags(Int) {
	var Desktop = 1;
	var Android = 2;
	var iOS = 4;
}

enum abstract ActivityJoinRequestReply(Int) {
	var No;
	var Yes;
	var Ignore;
}

enum abstract Status(Int) {
	var Offline = 0;
	var Online = 1;
	var Idle = 2;
	var DoNotDisturb = 3;
}

enum abstract RelationshipType(Int) {
	var None;
	var Friend;
	var Blocked;
	var PendingIncoming;
	var PendingOutgoing;
	var Implicit;
}

enum abstract LobbyType(Int) {
	var Private = 1;
	var Public;
}

enum abstract LobbySearchComparison(Int) {
	var LessThanOrEqual = -2;
	var LessThan;
	var Equal;
	var GreaterThan;
	var GreaterThanOrEqual;
	var NotEqual;
}

enum abstract LobbySearchCast(Int) {
	var String = 1;
	var Number;
}

enum abstract LobbySearchDistance(Int) {
	var Local;
	var Default;
	var Extended;
	var Global;
}

enum abstract KeyVariant(Int) {
	var Normal;
	var Right;
	var Left;
}

enum abstract MouseButton(Int) {
	var Left;
	var Middle;
	var Right;
}

enum abstract EntitlementType(Int) {
	var Purchase = 1;
	var PremiumSubscription;
	var DeveloperGift;
	var TestModePurchase;
	var FreePurchase;
	var UserGift;
	var PremiumPurchase;
}

enum abstract SkuType(Int) {
	var Application = 1;
	var DLC;
	var Consumable;
	var Bundle;
}

enum abstract InputModeType(Int) {
	var VoiceActivity = 0;
	var PushToTalk;
}

#if cpp
@:include('types.h')
@:native('discord::User')
#elseif cs
@:cs.using('Core')
@:native('Discord.User')
#end
@:structAccess private extern class DiscordUser {}
@:structInit class User {
	@:allow(discord.gamesdk)
	var internal_:DiscordUser;

	public function new(?id:Int64, ?username:String, ?discriminator:String, ?avatar:String, ?bot:Bool) {
		this.id = id ?? this.id;
		this.username = username ?? this.username;
		this.discriminator = discriminator ?? this.discriminator;
		this.avatar = avatar ?? this.avatar;
		this.bot = bot ?? this.bot;
	}

	public var id(get, set):Int64;
	#if cpp
	@:functionCode('return internal_.GetId();')
	#elseif cs
	@:functionCode('return internal_.Id;')
	#end
	function get_id() {
		return 0;
	}
	#if cpp
	@:functionCode('internal_.SetId(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Id = value;')
	#end
	function set_id(value) {
		return 0;
	}

	public var username(get, set):String;
	#if cpp
	@:functionCode('return internal_.GetUsername();')
	#elseif cs
	@:functionCode('return internal_.Username;')
	#end
	function get_username() {
		return '';
	}
	#if cpp
	@:functionCode('internal_.SetUsername(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Username = value;')
	#end
	function set_username(value) {
		return '';
	}
	
	public var discriminator(get, set):String;
	#if cpp
	@:functionCode('return internal_.GetDiscriminator();')
	#elseif cs
	@:functionCode('return internal_.Discriminator;')
	#end
	function get_discriminator() {
		return '';
	}
	#if cpp
	@:functionCode('internal_.SetDiscriminator(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Discriminator = value;')
	#end
	function set_discriminator(value) {
		return '';
	}

	public var avatar(get, set):String;
	#if cpp
	@:functionCode('return internal_.GetAvatar();')
	#elseif cs
	@:functionCode('return internal_.Avatar;')
	#end
	function get_avatar() {
		return '';
	}
	#if cpp
	@:functionCode('internal_.SetAvatar(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Avatar = value;')
	#end
	function set_avatar(value) {
		return '';
	}

	public var bot(get, set):Bool;
	#if cpp
	@:functionCode('return internal_.GetBot();')
	#elseif cs
	@:functionCode('return internal_.Bot;')
	#end
	function get_bot() {
		return false;
	}
	#if cpp
	@:functionCode('internal_.SetBot(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Bot = value;')
	#end
	function set_bot(value) {
		return false;
	}
}

#if cpp
@:include('types.h')
@:native('discord::OAuth2Token')
#elseif cs
@:cs.using('Core')
@:native('Discord.OAuth2Token')
#end
@:structAccess private extern class DiscordOAuth2Token {}
@:structInit class OAuth2Token {
	@:allow(discord.gamesdk)
	var internal_:DiscordOAuth2Token;

	public var accessToken(get, set):String;
	#if cpp
	@:functionCode('return internal_.GetAccessToken();')
	#elseif cs
	@:functionCode('return internal_.AccessToken;')
	#end
	function get_accessToken() {
		return '';
	}
	#if cpp
	@:functionCode('internal_.SetAccessToken(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.AccessToken = value;')
	#end
	function set_accessToken(value) {
		return '';
	}

	public var scopes(get, set):String;
	#if cpp
	@:functionCode('return internal_.GetScopes();')
	#elseif cs
	@:functionCode('return internal_.Scopes;')
	#end
	function get_scopes() {
		return '';
	}
	#if cpp
	@:functionCode('internal_.SetScopes(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Scopes = value;')
	#end
	function set_scopes(value) {
		return '';
	}

	public var expires(get, set):Int64;
	#if cpp
	@:functionCode('return internal_.GetExpires();')
	#elseif cs
	@:functionCode('return internal_.Expires;')
	#end
	function get_expires() {
		return 0;
	}
	#if cpp
	@:functionCode('internal_.SetExpires(value);
					return value;')
	#elseif cs
	@:functionCode('return internal_.Expires = value;')
	#end
	function set_expires(value) {
		return 0;
	}
}

typedef ImageHandle = {
	var type:ImageType;
}