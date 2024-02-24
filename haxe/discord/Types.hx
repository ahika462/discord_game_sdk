package discord;

import cpp.RawPointer;
import cpp.UInt32;
import cpp.UInt8;
import cpp.UInt64;
import cpp.Int32;
import cpp.Int64;
import discord._internal.Types;

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
	var Lef;
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

typedef ClientID = Int64;
typedef Version = Int32;
typedef Snowflake = Int64;
typedef Timestamp = Int64;
typedef UserID = Snowflake;
typedef Locale = String;
typedef Branch = String;
typedef LobbyID = Snowflake;
typedef LobbySecret = String;
typedef MetadataKey = String;
typedef MetadataValue = String;
typedef NetworkPeerID = UInt64;
typedef NetworkChannelID = UInt8;
#if (mac || linux)
// IDXGISwapChain, MSG
#end
typedef Path = String;
typedef DateTime = String;

@:structInit class User {
	var internal_:DiscordUser;

	@:functionCode('internal_ = DiscordUser();')
	public function new(?id:UserID, ?username:String, ?discriminator:String, ?avatar:String, ?bot:Bool) {
		this.id = id ?? 0;
		this.username = username ?? '';
		this.discriminator = discriminator ?? '';
		this.avatar = avatar ?? '';
		this.bot = bot ?? false;
	}

	public var id(get, set):UserID;
	@:functionCode('return internal_.id;')
	function get_id() {
		return 0;
	}
	@:functionCode('internal_.id = v;')
	function set_id(v) {
		return v;
	}

	public var username(get, set):String;
	@:functionCode('return internal_.username;')
	function get_username() {
		return '';
	}
	@:functionCode('strncpy(internal_.username, v, 256);
					internal_.username[256 - 1] = \'\\0\';
					return internal_.username;')
	function set_username(v) {
		return v;
	}

	public var discriminator(get, set):String;
	@:functionCode('return internal_.discriminator;')
	function get_discriminator() {
		return '';
	}
	@:functionCode('strncpy(internal_.discriminator, v, 8);
					internal_.discriminator[8 - 1] = \'\\0\';
					return internal_.discriminator;')
	function set_discriminator(v) {
		return v;
	}

	public var avatar(get, set):String;
	@:functionCode('return internal_.avatar;')
	function get_avatar() {
		return '';
	}
	@:functionCode('strncpy(internal_.avatar, v, 128);
					internal_.avatar[128 - 1] = \'\\0\';
					return internal_.avatar;')
	function set_avatar(v) {
		return v;
	}

	public var bot(get, set):Bool;
	@:functionCode('return internal_.bot;')
	function get_bot() {
		return false;
	}
	@:functionCode('internal_.bot = v;')
	function set_bot(v) {
		return v;
	}
}

@:structInit class OAuth2Token {
	var internal_:DiscordOAuth2Token;

	@:functionCode('internal_ = DiscordOAuth2Token();')
	public function new(?accessToken:String, ?scopes:String, ?expires:Timestamp) {
		this.accessToken = accessToken ?? '';
		this.scopes = scopes ?? '';
		this.expires = expires ?? 0;
	}

	public var accessToken(get, set):String;
	@:functionCode('return internal_.access_token;')
	function get_accessToken() {
		return '';
	}
	@:functionCode('strncpy(internal_.access_token, v, 128);
					internal_.access_token[128 - 1] = \'\\0\';
					return internal_.access_token;')
	function set_accessToken(v) {
		return v;
	}

	public var scopes(get, set):String;
	@:functionCode('return internal_.scopes;')
	function get_scopes() {
		return '';
	}
	@:functionCode('strncpy(internal_.scopes, v, 1024);
					internal_.scopes[1024 - 1] = \'\\0\';
					return internal_.scopes;')
	function set_scopes(v) {
		return v;
	}

	public var expires(get, set):Timestamp;
	@:functionCode('return internal_.expires;')
	function get_expires() {
		return 0;
	}
	@:functionCode('internal_.expires = v;')
	function set_expires(v) {
		return v;
	}
}

@:structInit class ImageHandle {
	var internal_:DiscordImageHandle;

	@:functionCode('internal_ = DiscordImageHandle();')
	function new(?type:ImageType, ?id:Int64, ?size:UInt32) {
		this.type = type ?? User;
		this.id = id ?? 0;
		this.size = size ?? 0;
	}

	public var type(get, set):ImageType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return User;
	}
	@:functionCode('internal_.type = (EDiscordImageType)v;')
	function set_type(v) {
		return v;
	}

	public var id(get, set):Int64;
	@:functionCode('return internal_.id;')
	function get_id() {
		return 0;
	}
	@:functionCode('internal_.id = v;')
	function set_id(v) {
		return v;
	}

	public var size(get, set):UInt32;
	@:functionCode('return internal_.size;')
	function get_size() {
		return 0;
	}
	@:functionCode('internal_.size = v;')
	function set_size(v) {
		return v;
	}
}

@:structInit class ImageDimensions {
	var internal_:DiscordImageDimensions;

	@:functionCode('internal_ = DiscordImageDimensions();')
	public function new(?width:UInt32, ?height:UInt32) {
		this.width = width ?? 0;
		this.height = height ?? 0;
	}

	public var width(get, set):UInt32;
	@:functionCode('return internal_.width;')
	function get_width() {
		return 0;
	}
	@:functionCode('internal_.width = v;')
	function set_width(v) {
		return v;
	}

	public var height(get, set):UInt32;
	@:functionCode('return internal_.height;')
	function get_height() {
		return 0;
	}
	@:functionCode('internal_.height = v;')
	function set_height(v) {
		return v;
	}
}

@:structInit class ActivityTimestamps {
	var internal_:DiscordActivityTimestamps;

	@:functionCode('internal_ = DiscordActivityTimestamps();')
	public function new(?start:Timestamp, ?end:Timestamp) {
		this.start = start ?? 0;
		this.end = end ?? 0;
	}

	public var start(get, set):Timestamp;
	@:functionCode('return internal_.start;')
	function get_start() {
		return 0;
	}
	@:functionCode('internal_.start = v;')
	function set_start(v) {
		return v;
	}

	public var end(get, set):Timestamp;
	@:functionCode('return internal_.end;')
	function get_end() {
		return 0;
	}
	@:functionCode('internal_.end = v;')
	function set_end(v) {
		return v;
	}
}

@:structInit class ActivityAssets {
	var internal_:DiscordActivityAssets;

	public function new(?largeImage:String, ?largeText:String, ?smallImage:String, ?smallText:String) {
		this.largeImage = largeImage ?? '';
		this.largeText = largeText ?? '';
		this.smallImage = smallImage ?? '';
		this.smallText = smallText ?? '';
	}

	public var largeImage(get, set):String;
	@:functionCode('return internal_.large_image;')
	function get_largeImage() {
		return '';
	}
	@:functionCode('strncpy(internal_.large_image, v, 128);
					internal_.large_image[128 - 1] = \'\\0\';
					return internal_.large_image;')
	function set_largeImage(v) {
		return v;
	}

	public var largeText(get, set):String;
	@:functionCode('return internal_.large_text;')
	function get_largeText() {
		return '';
	}
	@:functionCode('strncpy(internal_.large_text, v, 128);
					internal_.large_text[128 - 1] = \'\\0\';
					return internal_.large_text;')
	function set_largeText(v) {
		return v;
	}

	public var smallImage(get, set):String;
	@:functionCode('return internal_.small_image;')
	function get_smallImage() {
		return '';
	}
	@:functionCode('strncpy(internal_.small_image, v, 128);
					internal_.small_image[128 - 1] = \'\\0\';
					return internal_.small_image;')
	function set_smallImage(v) {
		return v;
	}

	public var smallText(get, set):String;
	@:functionCode('return internal_.small_text;')
	function get_smallText() {
		return '';
	}
	@:functionCode('strncpy(internal_.small_text, v, 128);
					internal_.small_text[128 - 1] = \'\\0\';
					return internal_.small_text;')
	function set_smallText(v) {
		return v;
	}
}

@:structInit class PartySize {
	var internal_:DiscordPartySize;

	@:functionCode('internal_ = DiscordPartySize();')
	public function new(?currentSize:Int32, ?maxSize:Int32) {
		this.currentSize = currentSize ?? 0;
		this.maxSize = maxSize ?? 0;
	}

	public var currentSize(get, set):Int32;
	@:functionCode('return internal_.current_size;')
	function get_currentSize() {
		return 0;
	}
	@:functionCode('internal_.current_size = v;')
	function set_currentSize(v) {
		return v;
	}

	public var maxSize(get, set):Int32;
	@:functionCode('return internal_.max_size;')
	function get_maxSize() {
		return 0;
	}
	@:functionCode('internal_.max_size = v;')
	function set_maxSize(v) {
		return v;
	}
}

@:build(DiscordMacros.include(['discord/PartySize.h']))
@:structInit class ActivityParty {
	var internal_:DiscordActivityParty;

	@:functionCode('internal_ = DiscordActivityParty();')
	public function new(?id:String, ?size:PartySize, ?privacy:ActivityPartyPrivacy) {
		this.id = id ?? '';
		this.size = size ?? {};
		this.privacy = privacy ?? Private;
	}

	public var id(get, set):String;
	@:functionCode('return internal_.id;')
	function get_id() {
		return '';
	}
	@:functionCode('strncpy(internal_.id, v, 128);
					internal_.id[128 - 1] = \'\\0\';
					return internal_.id;')
	function set_id(v) {
		return v;
	}

	var _size:PartySize = {};
	public var size(get, set):PartySize;
	@:functionCode('_size->internal_ = internal_.size;')
	function get_size() {
		return _size;
	}
	@:functionCode('_size->internal_ = v->internal_;')
	function set_size(v) {
		return _size;
	}

	public var privacy(get, set):ActivityPartyPrivacy;
	@:functionCode('return (int)internal_.privacy;')
	function get_privacy() {
		return Private;
	}
	@:functionCode('internal_.privacy = (EDiscordActivityPartyPrivacy)v;')
	function set_privacy(v) {
		return v;
	}
}

@:structInit class ActivitySecrets {
	var internal_:DiscordActivitySecrets;

	@:functionCode('internal_ = DiscordActivitySecrets();')
	public function new(?match:String, ?join:String, ?spectate:String) {
		this.match = match ?? '';
		this.join = join ?? '';
		this.spectate = spectate ?? '';
	}

	public var match(get, set):String;
	@:functionCode('return internal_.match;')
	function get_match() {
		return '';
	}
	@:functionCode('strncpy(internal_.match, v, 128);
					internal_.match[128 - 1] = \'\\0\';
					return internal_.match;')
	function set_match(v) {
		return v;
	}

	public var join(get, set):String;
	@:functionCode('return internal_.join;')
	function get_join() {
		return '';
	}
	@:functionCode('strncpy(internal_.join, v, 128);
					internal_.join[128 - 1] = \'\\0\';
					return internal_.join;')
	function set_join(v) {
		return v;
	}

	public var spectate(get, set):String;
	@:functionCode('return internal_.spectate;')
	function get_spectate() {
		return '';
	}
	@:functionCode('strncpy(internal_.spectate, v, 128);
					internal_.spectate[128 - 1] = \'\\0\';
					return internal_.spectate;')
	function set_spectate(v) {
		return v;
	}
}

@:build(DiscordMacros.include(['discord/ActivityTimestamps.h', 'discord/ActivityAssets.h', 'discord/ActivityParty.h', 'discord/ActivitySecrets.h']))
@:structInit class Activity {
	var internal_:DiscordActivity;

	public function new(?type:ActivityType, ?applicationID:Int64, ?name:String, ?state:String, ?details:String, ?timestamps:ActivityTimestamps, ?assets:ActivityAssets, ?party:ActivityParty, ?secrets:ActivitySecrets, ?instance:Bool, ?supportedPlatforms:UInt32) {
		this.type = type ?? Playing;
		this.applicationID = applicationID ?? 0;
		this.name = name ?? '';
		this.state = state ?? '';
		this.details = details ?? '';
		this.timestamps = timestamps ?? {};
		this.assets = assets ?? {};
		this.party = party ?? {};
		this.secrets = secrets ?? {};
		this.instance = instance ?? false;
		this.supportedPlatforms = supportedPlatforms ?? 0;
	}

	public var type(get, set):ActivityType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return Playing;
	}
	@:functionCode('internal_.type = (EDiscordActivityType)v;')
	function set_type(v) {
		return v;
	}

	public var applicationID(get, set):Int64;
	@:functionCode('return internal_.application_id;')
	function get_applicationID() {
		return 0;
	}
	@:functionCode('internal_.application_id = v;')
	function set_applicationID(v) {
		return v;
	}

	public var name(get, set):String;
	@:functionCode('return internal_.name;')
	function get_name() {
		return '';
	}
	@:functionCode('strncpy(internal_.name, v, 128);
					internal_.name[128 - 1] = \'\\0\';
					return internal_.name;')
	function set_name(v) {
		return v;
	}

	public var state(get, set):String;
	@:functionCode('return internal_.state;')
	function get_state() {
		return '';
	}
	@:functionCode('strncpy(internal_.state, v, 128);
					internal_.state[128 - 1] = \'\\0\';
					return internal_.state;')
	function set_state(v) {
		return v;
	}

	public var details(get, set):String;
	@:functionCode('return internal_.details;')
	function get_details() {
		return '';
	}
	@:functionCode('strncpy(internal_.details, v, 128);
					internal_.details[128 - 1] = \'\\0\';
					return internal_.details;')
	function set_details(v) {
		return v;
	}

	var _timestamps:ActivityTimestamps = {};
	public var timestamps(get, set):ActivityTimestamps;
	@:functionCode('_timestamps->internal_ = internal_.timestamps;')
	function get_timestamps() {
		return _timestamps;
	}
	@:functionCode('_timestamps->internal_ = v->internal_;')
	function set_timestamps(v) {
		return _timestamps;
	}

	var _assets:ActivityAssets = {};
	public var assets(get, set):ActivityAssets;
	@:functionCode('_assets->internal_ = internal_.assets;')
	function get_assets() {
		return _assets;
	}
	@:functionCode('_assets->internal_ = v->internal_;')
	function set_assets(v) {
		return _assets;
	}

	var _party:ActivityParty = {};
	public var party(get, set):ActivityParty;
	@:functionCode('_party->internal_ = internal_.party;')
	function get_party() {
		return _party;
	}
	@:functionCode('_party->internal_ = v->internal_;')
	function set_party(v) {
		return _party;
	}

	var _secrets:ActivitySecrets = {};
	public var secrets(get, set):ActivitySecrets;
	@:functionCode('_secrets->internal_ = internal_.secrets;')
	function get_secrets() {
		return _secrets;
	}
	@:functionCode('_secrets->internal_ = v->internal_;')
	function set_secrets(v) {
		return _secrets;
	}

	public var instance(get, set):Bool;
	@:functionCode('return internal_.instance;')
	function get_instance() {
		return false;
	}
	@:functionCode('internal_.instance = v;')
	function set_instance(v) {
		return v;
	}

	public var supportedPlatforms(get, set):UInt32;
	@:functionCode('return internal_.supported_platforms;')
	function get_supportedPlatforms() {
		return 0;
	}
	@:functionCode('internal_.supported_platforms = v;')
	function set_supportedPlatforms(v) {
		return v;
	}
}

@:build(DiscordMacros.include(['discord/Activity.h']))
@:structInit class Presence {
	var internal_:DiscordPresence;

	@:functionCode('internal_ = DiscordPresence();')
	public function new(?status:Status, ?activity:Activity) {
		this.status = status ?? Offline;
		this.activity = activity ?? {};
	}

	public var status(get, set):Status;
	@:functionCode('return (int)internal_.status;')
	function get_status() {
		return Offline;
	}
	@:functionCode('internal_.status = (EDiscordStatus)v;')
	function set_status(v) {
		return v;
	}

	var _activity:Activity = {};
	public var activity(get, set):Activity;
	@:functionCode('_activity->internal_ = internal_.activity;')
	function get_activity() {
		return _activity;
	}
	@:functionCode('_activity->internal_ = v->internal_;')
	function set_activity(v) {
		return _activity;
	}
}

@:build(DiscordMacros.include(['discord/User.h', 'discord/Presence.h']))
@:structInit class Relationship {
	var internal_:DiscordRelationship;

	@:functionCode('internal_ = DiscordRelationship();')
	public function new(?type:RelationshipType, ?user:User, ?presence:Presence) {
		this.type = type ?? None;
		this.user = user ?? {};
		this.presence = presence ?? {};
	}

	public var type(get, set):RelationshipType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return None;
	}
	@:functionCode('internal_.type = (EDiscordRelationshipType)v;')
	function set_type(v) {
		return v;
	}

	var _user:User = {};
	public var user(get, set):User;
	@:functionCode('_user->internal_ = internal_.user;')
	function get_user() {
		return _user;
	}
	@:functionCode('_user->internal_ = v->internal_;')
	function set_user(v) {
		return _user;
	}

	var _presence:Presence = {};
	public var presence(get, set):Presence;
	@:functionCode('_presence->internal_ = internal_.presence;')
	function get_presence() {
		return _presence;
	}
	@:functionCode('_presence->internal_ = v->internal_;')
	function set_presence(v) {
		return _presence;
	}
}

@:structInit class Lobby {
	var internal_:DiscordLobbyInternal;

	@:functionCode('internal_ = DiscordLobby();')
	public function new(?id:LobbyID, ?type:LobbyType, ?ownerID:UserID, ?secret:LobbySecret, ?capacity:UInt32, ?locked:Bool) {
		this.id = id ?? 0;
		this.type = type ?? Private;
		this.ownerID = ownerID ?? 0;
		this.secret = secret ?? untyped ''.__s;
		this.capacity = capacity ?? 0;
		this.locked = locked ?? false;
	}

	public var id(get, set):LobbyID;
	@:functionCode('return internal_.id;')
	function get_id() {
		return 0;
	}
	@:functionCode('internal_.id = v;')
	function set_id(v) {
		return v;
	}

	public var type(get, set):LobbyType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return Private;
	}
	@:functionCode('internal_.type = (EDiscordLobbyType)v;')
	function set_type(v) {
		return v;
	}

	public var ownerID(get, set):UserID;
	@:functionCode('return internal_.owner_id;')
	function get_ownerID() {
		return 0;
	}
	@:functionTailCode('internal_.owner_id = v;')
	function set_ownerID(v) {
		return v;
	}

	public var secret(get, set):LobbySecret;
	@:functionCode('return internal_.secret;')
	function get_secret() {
		return '';
	}
	@:functionCode('strncpy(internal_.secret, v, 128);
					internal_.secret[128 - 1] = \'\\0\';
					return internal_.secret;')
	function set_secret(v) {
		return v;
	}

	public var capacity(get, set):UInt32;
	@:functionCode('return internal_.capacity;')
	function get_capacity() {
		return 0;
	}
	@:functionCode('internal_.capacity = v;')
	function set_capacity(v) {
		return v;
	}

	public var locked(get, set):Bool;
	@:functionCode('return internal_.locked;')
	function get_locked() {
		return false;
	}
	@:functionCode('internal_.locked = v;')
	function set_locked(v) {
		return v;
	}
}

@:structInit class ImeUnderline {
	var internal_:DiscordImeUnderline;
	
	@:functionCode('internal_ = DiscordImeUnderline();')
	public function new(?from:Int32, ?to:Int32, ?color:UInt32, ?backgroundColor:UInt32, ?thick:Bool) {
		this.from = from ?? 0;
		this.to = to ?? 0;
		this.color = color ?? 0;
		this.backgroundColor = backgroundColor ?? 0;
		this.thick = thick ?? false;
	}

	public var from(get, set):Int32;
	@:functionCode('return internal_.from;')
	function get_from() {
		return 0;
	}
	@:functionCode('internal_.from = v;')
	function set_from(v) {
		return v;
	}

	public var to(get, set):Int32;
	@:functionCode('return internal_.to;')
	function get_to() {
		return 0;
	}
	@:functionCode('internal_.to = v;')
	function set_to(v) {
		return v;
	}

	public var color(get, set):UInt32;
	@:functionCode('return internal_.color;')
	function get_color() {
		return 0;
	}
	@:functionCode('internal_.color = v;')
	function set_color(v) {
		return v;
	}

	public var backgroundColor(get, set):UInt32;
	@:functionCode('return internal_.background_color;')
	function get_backgroundColor() {
		return 0;
	}
	@:functionCode('internal_.background_color = v;')
	function set_backgroundColor(v) {
		return v;
	}

	public var thick(get, set):Bool;
	@:functionCode('return internal_.thick;')
	function get_thick() {
		return false;
	}
	@:functionCode('internal_.thick = v;')
	function set_thick(v) {
		return v;
	}
}

@:structInit class Rect {
	var internal_:DiscordRect;

	@:functionCode('internal_ = DiscordRect();')
	public function new(?left:Int32, ?top:Int32, ?right:Int32, ?bottom:Int32) {
		this.left = left ?? 0;
		this.top = top ?? 0;
		this.right = right ?? 0;
		this.bottom = bottom ?? 0;
	}

	public var left(get, set):Int32;
	@:functionCode('return internal_.left;')
	function get_left() {
		return 0;
	}
	@:functionCode('internal_.left = v;')
	function set_left(v) {
		return v;
	}

	public var top(get, set):Int32;
	@:functionCode('return internal_.top;')
	function get_top() {
		return 0;
	}
	@:functionCode('internal_.top = v;')
	function set_top(v) {
		return v;
	}

	public var right(get, set):Int32;
	@:functionCode('return internal_.right;')
	function get_right() {
		return 0;
	}
	@:functionCode('internal_.right = v;')
	function set_right(v) {
		return v;
	}

	public var bottom(get, set):Int32;
	@:functionCode('return internal_.bottom;')
	function get_bottom() {
		return 0;
	}
	@:functionCode('internal_.bottom = v;')
	function set_bottom(v) {
		return v;
	}
}

@:structInit class FileStat {
	var internal_:DiscordFileStat;

	@:functionCode('internal_ = DiscordFileStat();')
	public function new(?filename:String, ?size:UInt64, ?lastModified:UInt64) {
		this.filename = filename ?? '';
		this.size = size ?? 0;
		this.lastModified = lastModified ?? 0;
	}

	public var filename(get, set):String;
	@:functionCode('return internal_.filename;')
	function get_filename() {
		return '';
	}
	@:functionCode('strncpy(internal_.filename, v, 260);
					internal_.filename[260 - 1] = \'\\0\';
					return internal_.filename;')
	function set_filename(v) {
		return v;
	}

	public var size(get, set):UInt64;
	@:functionCode('return internal_.size;')
	function get_size() {
		return 0;
	}
	@:functionCode('internal_.size = v;')
	function set_size(v) {
		return v;
	}

	public var lastModified(get, set):UInt64;
	@:functionCode('return internal_.last_modified;')
	function get_lastModified() {
		return 0;
	}
	@:functionCode('internal_.last_modified = v;')
	function set_lastModified(v) {
		return v;
	}
}

@:structInit class Entitlement {
	var internal_:DiscordEntitlement;

	@:functionCode('internal_ = DiscordEntitlement();')
	public function new(?id:Snowflake, ?type:EntitlementType, ?skuID:Snowflake) {
		this.id = id ?? 0;
		this.type = type ?? Purchase;
		this.skuID = skuID ?? 0;
	}

	public var id(get, set):Snowflake;
	@:functionCode('return internal_.id;')
	function get_id() {
		return 0;
	}
	@:functionCode('internal_.id = v;')
	function set_id(v) {
		return v;
	}

	public var type(get, set):EntitlementType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return Purchase;
	}
	@:functionCode('internal_.type = (EDiscordEntitlementType)v;')
	function set_type(v) {
		return v;
	}

	public var skuID(get, set):Snowflake;
	@:functionCode('return internal_.sku_id;')
	function get_skuID() {
		return 0;
	}
	@:functionCode('internal_.sku_id = v;')
	function set_skuID(v) {
		return v;
	}
}

@:structInit class SkuPrice {
	var internal_:DiscordSkuPrice;

	@:functionCode('internal_ = DiscordSkuPrice();')
	public function new(?amount:UInt32, ?currency:String) {
		this.amount = amount ?? 0;
		this.currency = currency ?? '';
	}

	public var amount(get, set):UInt32;
	@:functionCode('return internal_.amount;')
	function get_amount() {
		return 0;
	}
	@:functionCode('internal_.amount = v;')
	function set_amount(v) {
		return v;
	}

	public var currency(get, set):String;
	@:functionCode('return internal_.currency;')
	function get_currency() {
		return '';
	}
	@:functionCode('strncpy(internal_.currency, v, 16);
					internal_.currency[16 - 1] = \'\\0\';
					return internal_.currency;')
	function set_currency(v) {
		return v;
	}
}

@:build(DiscordMacros.include(['discord/SkuPrice.h']))
@:structInit class Sku {
	var internal_:DiscordSku;

	@:functionCode('internal_ = DiscordSku();')
	public function new(?id:Snowflake, ?type:SkuType, ?name:String, ?price:SkuPrice) {
		this.id = id ?? 0;
		this.type = type ?? Application;
		this.name = name ?? '';
		this.price = price ?? {};
	}

	public var id(get, set):Snowflake;
	@:functionCode('return internal_.id;')
	function get_id() {
		return 0;
	}
	@:functionCode('internal_.id = v;')
	function set_id(v) {
		return v;
	}

	public var type(get, set):SkuType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return Application;
	}
	@:functionCode('internal_.type = (EDiscordSkuType)v;')
	function set_type(v) {
		return v;
	}

	public var name(get, set):String;
	@:functionCode('return internal_.name;')
	function get_name() {
		return '';
	}
	@:functionCode('strncpy(internal_.name, v, 256);
					internal_.name[256 - 1] = \'\\0\';
					return internal_.name;')
	function set_name(v) {
		return v;
	}

	var _price:SkuPrice = {};
	public var price(get, set):SkuPrice;
	@:functionCode('_price->internal_ = internal_.price;')
	function get_price() {
		return _price;
	}
	@:functionCode('_price->internal_ = v->internal_;')
	function set_price(v) {
		return _price;
	}
}

@:structInit class InputMode {
	var internal_:DiscordInputMode;

	@:functionCode('internal_ = DiscordInputMode();')
	public function new(?type:InputModeType, ?shortcut:String) {
		this.type = type ?? VoiceActivity;
		this.shortcut = shortcut ?? '';
	}

	public var type(get, set):InputModeType;
	@:functionCode('return (int)internal_.type;')
	function get_type() {
		return VoiceActivity;
	}
	@:functionCode('internal_.type = (EDiscordInputModeType)v;')
	function set_type(v) {
		return v;
	}

	public var shortcut(get, set):String;
	@:functionCode('return internal_.shortcut;')
	function get_shortcut() {
		return '';
	}
	@:functionCode('strncpy(internal_.shortcut, v, 256);
					internal_.shortcut[256 - 1] = \'\\0\';
					return internal_.shortcut;')
	function set_shortcut(v) {
		return v;
	}
}

@:structInit class UserAchievement {
	var internal_:DiscordUserAchievement;

	@:functionCode('internal_ = DiscordUserAchievement();')
	public function new() {}

	public var userID(get, set):Snowflake;
	@:functionCode('return internal_.user_id;')
	function get_userID() {
		return 0;
	}
	@:functionCode('internal_.user_id = v;')
	function set_userID(v) {
		return v;
	}

	public var achievementID(get, set):Snowflake;
	@:functionCode('return internal_.achievement_id;')
	function get_achievementID() {
		return 0;
	}
	@:functionCode('internal_.achievement_id;')
	function set_achievementID(v) {
		return v;
	}

	public var percentComplete(get, set):UInt8;
	@:functionCode('return internal_.percent_complete;')
	function get_percentComplete() {
		return 0;
	}
	@:functionCode('internal_.percent_complete = v;')
	function set_percentComplete(v) {
		return v;
	}

	public var unlockedAt(get, set):DateTime;
	@:functionCode('return internal_.unlocked_at;')
	function get_unlockedAt() {
		return '';
	}
	@:functionCode('strncpy(internal_.unlocked_at, v, 64);
					internal_.unlocked_at[64 - 1] = \'\\0\';
					return internal_.unlocked_at;')
	function set_unlockedAt(v) {
		return v;
	}
}

class LobbyTransaction {
	var internal_:RawPointer<IDiscordLobbyTransaction>;

	@:functionCode('internal_ = IDiscordLobbyTransaction();')
	public function new() {}

	@:functionCode('return (int)internal_->set_type(internal_, (EDiscordLobbyType)type);')
	public function setType(type:LobbyType):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->set_owner(internal_, ownerID);')
	public function setOwner(ownerID:UserID):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->set_owner(internal_, capacity);')
	public function setCapacity(capacity:UInt32):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->set_metadata(internal_, const_cast<char*>(key.__s), const_cast<char*>(value.__s));')
	public function setMetadata(key:MetadataKey, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->delete_metadata(internal_, const_cast<char*>(key.__s));')
	public function deleteMetadata(key:MetadataKey):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->set_locked(internal_, (locked ? 1 : 0));')
	public function setLocked(locked:Bool):Result {
		return Ok;
	}
}

class LobbyMemberTransaction {
	var internal_:RawPointer<IDiscordLobbyMemberTransaction>;

	@:functionCode('internal_ = IDiscordLobbyMemberTransaction();')
	public function new() {}

	@:functionCode('return (int)internal_->set_metadata(internal_, const_cast<char*>(key.__s), const_cast<char*>(value.__s));')
	public function setMetadata(key:MetadataKey, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->delete_metadata(internal_, const_cast<char*>(key.__s));')
	public function deleteMetadata(key:MetadataKey):Result {
		return Ok;
	}
}

class LobbySearchQuery {
	var internal_:RawPointer<IDiscordLobbySearchQuery>;

	@:functionCode('internal_ = IDiscordLobbySearchQuery();')
	public function new() {}

	@:functionCode('return (int)internal_->filter(internal_, const_cast<char*>(key.__s), (EDiscordLobbySearchComparison)comparison, (EDiscordLobbySearchCast)search_cast, const_cast<char*>(value.__s));')
	public function filter(key:MetadataKey, comparison:LobbySearchComparison, search_cast:LobbySearchCast, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->sort(internal_, const_cast<char*>(key.__s), (EDiscordLobbySearchCast)search_cast, const_cast<char*>(value.__s));')
	public function sort(key:MetadataKey, search_cast:LobbySearchCast, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->limit(internal_, limit);')
	public function limit(limit:UInt32):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->distance(internal_, (EDiscordLobbySearchDistance)distance);')
	public function distance(distance:LobbySearchDistance):Result {
		return Ok;
	}
}