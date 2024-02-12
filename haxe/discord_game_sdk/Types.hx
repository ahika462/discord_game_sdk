package discord_game_sdk;

import haxe.ds.ReadOnlyArray;
import cpp.UInt32;
import cpp.UInt8;
import cpp.UInt64;
import haxe.Int32;
import haxe.Int64;
import discord_game_sdk.DiscordGameSDK;

@:include('types.h')

enum abstract Result(Int) from Int to Int {
	public static final list:ReadOnlyArray<String> = Macros.buildArray('discord_game_sdk.Types.Result', ['list']);
	
	var Ok;
	var ServiceUnavailable;
	var InvalidVersion;
	var LockFailed;
	var InternalError;
	var InvalidPayload;
	var InvalidCommand;
	var InvalidPermissions;
	var NotFetched;
	var NotFound;
	var Conflict;
	var InvalidSecret;
	var InvalidJoinSecret;
	var NoEligibleActivity;
	var InvalidInvite;
	var NotAuthenticated;
	var InvalidAccessToken;
	var ApplicationMismatch;
	var InvalidDataUrl;
	var InvalidBase64;
	var NotFiltered;
	var LobbyFull;
	var InvalidLobbySecret;
	var InvalidFilename;
	var InvalidFileSize;
	var InvalidEntitlement;
	var NotInstalled;
	var NotRunning;
	var InsufficientBuffer;
	var PurchaseCanceled;
	var InvalidGuild;
	var InvalidEvent;
	var InvalidChannel;
	var InvalidOrigin;
	var RateLimited;
	var OAuth2Error;
	var SelectChannelTimeout;
	var GetGuildTimeout;
	var SelectVoiceForceRequired;
	var CaptureShortcutAlreadyListening;
	var UnauthorizedForAchievement;
	var InvalidGiftCode;
	var PurchaseError;
	var TransactionAborted;
}

enum abstract CreateFlags(Int) from Int to Int {
	var Default;
	var NoRequireDiscord;
}

enum abstract LogLevel(Int) from Int to Int {
	var Error = 1;
	var Warn;
	var Info;
	var Debug;
}

enum abstract UserFlag(Int) from Int to Int {
	var Partner = 2;
	var HypeSquadEvents = 4;
	var HypeSquadHouse1 = 64;
	var HypeSquadHouse2 = 128;
	var HypeSquadHouse3 = 256;
}

enum abstract PremiumType(Int) from Int to Int {
	var None;
	var Tier1;
	var Tier2;
}

enum abstract ImageType(Int) from Int to Int {
	var User;
}

enum abstract ActivityPartyPrivacy(Int) from Int to Int {
	var Private;
	var Public;
}

enum abstract ActivityType(Int) from Int to Int {
	var Playing;
	var Streaming;
	var Listening;
	var Watching;
}

enum abstract ActivityActionType(Int) from Int to Int {
	var Join = 1;
	var Spectate;
}

enum abstract ActivitySupportedPlatformFlags(Int) from Int to Int {
	var Desktop = 1;
	var Android;
	var iOS = 4;
}

enum abstract ActivityJoinRequestReply(Int) from Int to Int {
	var No;
	var Yes;
	var Ignore;
}

enum abstract Status(Int) from Int to Int {
	var Offline;
	var Online;
	var Idle;
	var DoNotDisturb;
}

enum abstract RelationshipType(Int) from Int to Int {
	var None;
	var Friend;
	var Blocked;
	var PendingIncoming;
	var PendingOutgoing;
	var Implicit;
}

enum abstract LobbyType(Int) from Int to Int {
	var Private = 1;
	var Public;
}

enum abstract LobbySearchComparison(Int) from Int to Int {
	var LessThanOrEqual = -2;
	var LessThan;
	var Equal;
	var GreaterThan;
	var GreaterThanOrEqual;
	var NotEqual;
}

enum abstract LobbySearchCast(Int) from Int to Int {
	var String = 1;
	var Number;
}

enum abstract LobbySearchDistance(Int) from Int to Int {
	var Local;
	var Default;
	var Extended;
	var Global;
}

enum abstract KeyVariant(Int) from Int to Int {
	var Normal;
	var Right;
	var Left;
}

enum abstract MouseButton(Int) from Int to Int {
	var Left;
	var Middle;
	var Right;
}

enum abstract EntitlementType(Int) from Int to Int {
	var Purchase = 1;
	var PremiumSubscription;
	var DeveloperGift;
	var TestModePurchase;
	var FreePurchase;
	var UserGift;
	var PremiumPurchase;
}

enum abstract SkuType(Int) from Int to Int {
	var Application = 1;
	var DLC;
	var Consumable;
	var Bundle;
}

enum abstract InputModeType(Int) from Int to Int {
	var VoiceActivity;
	var PushToTalk;
}

typedef ClientId = Int64;
typedef Version = Int32;
typedef Snowflake = Int64;
typedef Timestamp = Int64;
typedef UserId = Snowflake;
typedef Locale = String;
typedef Branch = String;
typedef LobbyId = Snowflake;
typedef LobbySecret = String;
typedef MetadataKey = String;
typedef MetadataValue = String;
typedef NetworkPeerId = UInt64;
typedef NetworkChannelId = UInt8;
#if (macos || linux)
typedef IDXGISwapChain = Void->Void;
typedef MSG = Void->Void;
#end
typedef Path = String;
typedef DateTime = String;

@:include('types.h')
@:native('discord::User')
@:structAccess extern class DiscordUser {}
@:structInit class User {
	@:allow(discord_game_sdk)
	var internal_:DiscordUser;

	@:functionCode('internal_ = discord::User();')
	public function new(?id:UserId, ?username:String, ?discriminator:String, ?avatar:String, ?bot:Bool) {
		if (id != null) this.id = id;
		if (username != null) this.username = username;
		if (discriminator != null) this.discriminator = discriminator;
		if (avatar != null) this.avatar = avatar;
		if (bot != null) this.bot = bot;
	}

	public var id(get, set):UserId;
	@:functionCode('return internal_.GetId();')
	function get_id():UserId {
		return 0;
	}
	@:functionCode('internal_.SetId(value);')
	function set_id(value:UserId):UserId {
		return id;
	}

	public var username(get, set):String;
	@:functionCode('return internal_.GetUsername();')
	function get_username():String {
		return '';
	}
	@:functionCode('internal_.SetUsername(value);')
	function set_username(value:String):String {
		return username;
	}

	public var discriminator(get, set):String;
	@:functionCode('return internal_.GetDiscriminator();')
	function get_discriminator():String {
		return '';
	}
	@:functionCode('internal_.SetDiscriminator(value);')
	function set_discriminator(value:String):String {
		return discriminator;
	}

	public var avatar(get, set):String;
	@:functionCode('return internal_.GetAvatar();')
	function get_avatar():String {
		return '';
	}
	@:functionCode('internal_.SetAvatar(value);')
	function set_avatar(value:String):String {
		return avatar;
	}

	public var bot(get, set):Bool;
	@:functionCode('return internal_.GetBot();')
	function get_bot():Bool {
		return false;
	}
	@:functionCode('internal_.SetBot(value);')
	function set_bot(value:Bool):Bool {
		return bot;
	}
}

@:include('types.h')
@:native('discord::OAuth2Token')
@:structAccess extern class DiscordOAuth2Token {}
class OAuth2Token {
	@:allow(discord_game_sdk)
	var internal_:DiscordOAuth2Token;

	@:functionCode('internal_ = discord::OAuth2Token();')
	public function new(?accessToken:String, ?scopes:String, ?expires:Timestamp) {
		if (accessToken != null) this.accessToken = accessToken;
		if (scopes != null) this.scopes = scopes;
		if (expires != null) this.expires = expires;
	}

	public var accessToken(get, set):String;
	@:functionCode('return internal_.GetAccessToken();')
	function get_accessToken():String {
		return '';
	}
	@:functionCode('internal_.SetAccessToken(value);')
	function set_accessToken(value:String):String {
		return accessToken;
	}

	public var scopes(get, set):String;
	@:functionCode('return internal_.GetScopes();')
	function get_scopes():String {
		return '';
	}
	@:functionCode('internal_.SetScopes(value);')
	function set_scopes(value:String):String {
		return scopes;
	}

	public var expires(get, set):Timestamp;
	@:functionCode('return internal_.GetExpires();')
	function get_expires():Timestamp {
		return 0;
	}
	@:functionCode('internal_.SetExpires(value);')
	function set_expires(value:Timestamp):Timestamp {
		return expires;
	}
}

@:include('types.h')
@:native('discord::ImageHandle')
@:structAccess extern class DiscordImageHandle {}
@:structInit class ImageHandle {
	@:allow(discord_game_sdk)
	var internal_:DiscordImageHandle;

	@:functionCode('internal_ = discord::ImageHandle();')
	public function new(?type:ImageType, ?id:Int64, ?size:UInt32) {
		if (type != null) this.type = type;
		if (id != null) this.id = id;
		if (size != null) this.size = size;
	}
	
	public var type(get, set):ImageType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():ImageType {
		return User;
	}
	@:functionCode('internal_.SetType((discord::ImageType)value);')
	function set_type(value:ImageType):ImageType {
		return type;
	}

	public var id(get, set):Int64;
	@:functionCode('return internal_.GetId();')
	function get_id():Int64 {
		return 0;
	}
	@:functionCode('internal_.SetId(value);')
	function set_id(value:Int64):Int64 {
		return id;
	}

	public var size(get, set):UInt32;
	@:functionCode('return internal_.GetSize();')
	function get_size():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetSize(value);')
	function set_size(value:UInt32):UInt32 {
		return size;
	}
}

@:include('types.h')
@:native('discord::ImageDimensions')
@:structAccess extern class DiscordImageDimensions {}
@:structInit class ImageDimensions {
	@:allow(discord_game_sdk)
	var internal_:DiscordImageDimensions;

	@:functionCode('internal_ = discord::ImageDimensions();')
	public function new(?width:UInt32, ?height:UInt32) {
		if (width != null) this.width = width;
		if (height != null) this.height = height;
	}

	public var width(get, set):UInt32;
	@:functionCode('return internal_.GetWidth();')
	function get_width():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetWidth(value);')
	function set_width(value:UInt32):UInt32 {
		return width;
	}

	public var height(get, set):UInt32;
	@:functionCode('return internal_.GetHeight();')
	function get_height():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetHeight(value);')
	function set_height(value:UInt32):UInt32 {
		return height;
	}
}

@:include('types.h')
@:native('discord::ActivityTimestamps')
@:structAccess extern class DiscordActivityTimestamps {}
@:structInit class ActivityTimestamps {
	@:allow(discord_game_sdk)
	var internal_:DiscordActivityTimestamps;

	@:functionCode('internal_ = discord::ActivityTimestamps();')
	public function new(?start:Timestamp, ?end:Timestamp) {
		if (start != null) this.start = start;
		if (end != null) this.end = end;
	}

	public var start(get, set):Timestamp;
	@:functionCode('return internal_.GetStart();')
	function get_start():Timestamp {
		return 0;
	}
	@:functionCode('internal_.SetStart(value);')
	function set_start(value:Timestamp):Timestamp {
		return start;
	}

	public var end(get, set):Timestamp;
	@:functionCode('return internal_.GetEnd();')
	function get_end():Timestamp {
		return 0;
	}
	@:functionCode('internal_.SetEnd(value);')
	function set_end(value:Timestamp):Timestamp {
		return end;
	}
}

@:include('types.h')
@:native('discord::ActivityAssets')
@:structAccess extern class DiscordActivityAssets {}
@:structInit class ActivityAssets {
	@:allow(discord_game_sdk)
	var internal_:DiscordActivityAssets;

	@:functionCode('internal_ = discord::ActivityAssets();')
	public function new(?largeImage:String, ?largeText:String, ?smallImage:String, ?smallText:String) {
		if (largeImage != null) this.largeImage = largeImage;
		if (largeText != null) this.largeText = largeText;
		if (smallImage != null) this.smallImage = smallImage;
		if (smallText != null) this.smallText = smallText;
	}

	public var largeImage(get, set):String;
	@:functionCode('return internal_.GetLargeImage();')
	function get_largeImage():String {
		return '';
	}
	@:functionCode('internal_.SetLargeImage(value);')
	function set_largeImage(value:String):String {
		return largeImage;
	}

	public var largeText(get, set):String;
	@:functionCode('return internal_.GetLargeImage();')
	function get_largeText():String {
		return '';
	}
	@:functionCode('internal_.SetLargeImage(value);')
	function set_largeText(value:String):String {
		return largeText;
	}

	public var smallImage(get, set):String;
	@:functionCode('return internal_.GetSmallImage();')
	function get_smallImage():String {
		return '';
	}
	@:functionCode('internal_.SetSmallImage(value);')
	function set_smallImage(value:String):String {
		return smallImage;
	}

	public var smallText(get, set):String;
	@:functionCode('return internal_.GetSmallImage();')
	function get_smallText():String {
		return '';
	}
	@:functionCode('internal_.SetSmallImage(value);')
	function set_smallText(value:String):String {
		return smallText;
	}
}

@:include('types.h')
@:native('discord::PartySize')
@:structAccess extern class DiscordPartySize {}
@:structInit class PartySize {
	@:allow(discord_game_sdk)
	var internal_:DiscordPartySize;

	@:functionCode('internal_ = discord::PartySize();')
	public function new(?currentSize:Int32, ?maxSize:Int32) {
		if (currentSize != null) this.currentSize = currentSize;
		if (maxSize != null) this.maxSize = maxSize;
	}

	public var currentSize(get, set):Int32;
	@:functionCode('return internal_.GetCurrentSize();')
	function get_currentSize():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetCurrentSize(value);')
	function set_currentSize(value:Int32):Int32 {
		return currentSize;
	}

	public var maxSize(get, set):Int32;
	@:functionCode('return internal_.GetMaxSize();')
	function get_maxSize():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetMaxSize(value);')
	function set_maxSize(value:Int32):Int32 {
		return maxSize;
	}
}

@:include('types.h')
@:include('discord_game_sdk/PartySize.h')
@:native('discord::ActivityParty')
@:structAccess extern class DiscordActivityParty {}
@:structInit class ActivityParty {
	@:allow(discord_game_sdk)
	var internal_:DiscordActivityParty;

	@:functionCode('internal_ = discord::ActivityParty();')
	public function new(?id:String, ?size:PartySize, ?privacy:ActivityPartyPrivacy) {
		if (id != null) this.id = id;
		if (size != null) this.size = size;
		if (privacy != null) this.privacy = privacy;
	}

	public var id(get, set):String;
	@:functionCode('return internal_.GetId();')
	function get_id():String {
		return '';
	}
	@:functionCode('internal_.SetId(value);')
	function set_id(value:String):String {
		return id;
	}

	var _size:PartySize = {};
	public var size(get, set):PartySize;
	@:functionCode('_size->internal_ = internal_.GetSize();')
	function get_size():PartySize {
		return _size;
	}
	@:functionCode('
		internal_.GetSize().SetCurrentSize(value->internal_.GetCurrentSize());
		internal_.GetSize().SetMaxSize(value->internal_.GetMaxSize());
	')
	function set_size(value:PartySize):PartySize {
		return size;
	}

	public var privacy(get, set):ActivityPartyPrivacy;
	@:functionCode('return (int)internal_.GetPrivacy();')
	function get_privacy():ActivityPartyPrivacy {
		return Private;
	}
	@:functionCode('internal_.SetPrivacy((discord::ActivityPartyPrivacy)value);')
	function set_privacy(value:ActivityPartyPrivacy):ActivityPartyPrivacy {
		return privacy;
	}
}

@:include('types.h')
@:native('discord::ActivitySecrets')
@:structAccess extern class DiscordActivitySecrets {}
@:structInit class ActivitySecrets {
	@:allow(discord_game_sdk)
	var internal_:DiscordActivitySecrets;

	@:functionCode('internal_ = discord::ActivitySecrets();')
	public function new(?match:String, ?join:String, ?spectate:String) {
		if (match != null) this.match = match;
		if (join != null) this.join = join;
		if (spectate != null) this.spectate = spectate;
	}

	public var match(get, set):String;
	@:functionCode('return internal_.GetMatch();')
	function get_match():String {
		return '';
	}
	@:functionCode('internal_.SetMatch(value);')
	function set_match(value:String):String {
		return match;
	}

	public var join(get, set):String;
	@:functionCode('return internal_.GetJoin();')
	function get_join():String {
		return '';
	}
	@:functionCode('internal_.SetJoin(value);')
	function set_join(value:String):String {
		return join;
	}

	public var spectate(get, set):String;
	@:functionCode('return internal_.GetSpectate();')
	function get_spectate():String {
		return '';
	}
	@:functionCode('internal_.SetSpectate(value);')
	function set_spectate(value:String):String {
		return spectate;
	}
}

@:include('types.h')
@:include('discord_game_sdk/ActivityTimestamps.h')
@:include('discord_game_sdk/ActivityAssets.h')
@:include('discord_game_sdk/ActivityParty.h')
@:include('discord_game_sdk/ActivitySecrets.h')
@:native('discord::Activity')
@:structAccess extern class DiscordActivity {}
@:structInit class Activity {
	@:allow(discord_game_sdk)
	var internal_:DiscordActivity;

	@:functionCode('internal_ = discord::Activity();')
	public function new(?type:ActivityType, ?applicationId:Int64, ?name:String, ?state:String, ?details:String, ?timestamps:ActivityTimestamps, ?assets:ActivityAssets, ?party:ActivityParty, ?secrets:ActivitySecrets, ?instance:Bool, ?supportedPlatforms:ActivitySupportedPlatformFlags) {
		if (type != null) this.type = type;
		if (applicationId != null) this.applicationId = applicationId;
		if (name != null) this.name = name;
		if (state != null) this.state = state;
		if (details != null) this.details = details;
		if (timestamps != null) this.timestamps = timestamps;
		if (assets != null) this.assets = assets;
		if (party != null) this.party = party;
		if (secrets != null) this.secrets = secrets;
		if (instance != null) this.instance = instance;
		if (supportedPlatforms != null) this.supportedPlatforms = supportedPlatforms;
	}

	public var type(get, set):ActivityType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():ActivityType {
		return Playing;
	}
	@:functionCode('internal_.SetType((discord::ActivityType)value);')
	function set_type(value:ActivityType):ActivityType {
		return type;
	}

	public var applicationId(get, set):Int64;
	@:functionCode('return internal_.GetApplicationId();')
	function get_applicationId():Int64 {
		return 0;
	}
	@:functionCode('internal_.SetApplicationId(value);')
	function set_applicationId(value:Int64):Int64 {
		return applicationId;
	}

	public var name(get, set):String;
	@:functionCode('return internal_.GetName();')
	function get_name():String {
		return '';
	}
	@:functionCode('internal_.SetName(value);')
	function set_name(value:String):String {
		return name;
	}

	public var state(get, set):String;
	@:functionCode('return internal_.GetState();')
	function get_state():String {
		return '';
	}
	@:functionCode('internal_.SetState(value);')
	function set_state(value:String):String {
		return state;
	}

	public var details(get, set):String;
	@:functionCode('return internal_.GetDetails();')
	function get_details():String {
		return '';
	}
	@:functionCode('internal_.SetDetails(value);')
	function set_details(value:String):String {
		return details;
	}

	var _timestamps:ActivityTimestamps = {};
	public var timestamps(get, set):ActivityTimestamps;
	@:functionCode('_timestamps->internal_ = internal_.GetTimestamps();')
	function get_timestamps():ActivityTimestamps {
		return _timestamps;
	}
	@:functionCode('
		internal_.GetTimestamps().SetStart(value->internal_.GetStart());
		internal_.GetTimestamps().SetEnd(value->internal_.GetEnd());
	')
	function set_timestamps(value:ActivityTimestamps):ActivityTimestamps {
		return timestamps;
	}

	var _assets:ActivityAssets = {};
	public var assets(get, set):ActivityAssets;
	@:functionCode('_assets->internal_ = internal_.GetAssets();')
	function get_assets():ActivityAssets {
		return _assets;
	}
	@:functionCode('
		internal_.GetAssets().SetLargeImage(value->internal_.GetLargeImage());
		internal_.GetAssets().SetLargeText(value->internal_.GetLargeText());
		internal_.GetAssets().SetSmallImage(value->internal_.GetSmallImage());
		internal_.GetAssets().SetSmallText(value->internal_.GetSmallText());
	')
	function set_assets(value:ActivityAssets):ActivityAssets {
		return assets;
	}

	var _party:ActivityParty = {};
	public var party(get, set):ActivityParty;
	@:functionCode('_party->internal_ = internal_.GetParty();')
	function get_party():ActivityParty {
		return _party;
	}
	@:functionCode('
		internal_.GetParty().SetId(value->internal_.GetId());
		internal_.GetParty().GetSize().SetCurrentSize(value->internal_.GetSize().GetCurrentSize());
		internal_.GetParty().GetSize().SetMaxSize(value->internal_.GetSize().GetMaxSize());
		internal_.GetParty().SetPrivacy(value->internal_.GetPrivacy());
	')
	function set_party(value:ActivityParty):ActivityParty {
		return party;
	}

	var _secrets:ActivitySecrets = {};
	public var secrets(get, set):ActivitySecrets;
	@:functionCode('_secrets->internal_ = internal_.GetSecrets();')
	function get_secrets():ActivitySecrets {
		return _secrets;
	}
	@:functionCode('
		internal_.GetSecrets().SetMatch(value->internal_.GetMatch());
		internal_.GetSecrets().SetJoin(value->internal_.GetJoin());
		internal_.GetSecrets().SetSpectate(value->internal_.GetSpectate());
	')
	function set_secrets(value:ActivitySecrets):ActivitySecrets {
		return secrets;
	}

	public var instance(get, set):Bool;
	@:functionCode('return internal_.GetInstance();')
	function get_instance():Bool {
		return false;
	}
	@:functionCode('internal_.SetInstance(value);')
	function set_instance(value:Bool):Bool {
		return instance;
	}

	public var supportedPlatforms(get, set):ActivitySupportedPlatformFlags;
	@:functionCode('return internal_.GetSupportedPlatforms();')
	function get_supportedPlatforms():ActivitySupportedPlatformFlags {
		return Desktop;
	}
	@:functionCode('internal_.SetSupportedPlatforms((int)value);')
	function set_supportedPlatforms(value:ActivitySupportedPlatformFlags):ActivitySupportedPlatformFlags {
		return supportedPlatforms;
	}
}

@:include('types.h')
@:include('discord_game_sdk/Activity.h')
@:native('discord::Presence')
@:structAccess extern class DiscordPresence {}
@:structInit class Presence {
	@:allow(discord_game_sdk)
	var internal_:DiscordPresence;

	@:functionCode('internal_ = discord::Presence();')
	public function new(?status:Status, ?activity:Activity) {
		if (status != null) this.status = status;
		if (activity != null) this.activity = activity;
	}

	public var status(get, set):Status;
	@:functionCode('return (int)internal_.GetStatus();')
	function get_status():Status {
		return Offline;
	}
	@:functionCode('internal_.SetStatus((discord::Status)value);')
	function set_status(value:Status):Status {
		return status;
	}

	var _activity:Activity;
	public var activity(get, set):Activity;
	@:functionCode('_activity->internal_ = internal_.GetActivity();')
	function get_activity():Activity {
		return _activity;
	}
	@:functionCode('
		internal_.GetActivity().SetType(value->internal_.GetType());
		internal_.GetActivity().SetApplicationId(value->internal_.GetApplicationId());
		internal_.GetActivity().SetName(value->internal_.GetName());
		internal_.GetActivity().SetState(value->internal_.GetState());
		internal_.GetActivity().SetDetails(value->internal_.GetDetails());
		internal_.GetActivity().GetTimestamps().SetStart(value->internal_.GetTimestamps().GetStart());
		internal_.GetActivity().GetTimestamps().SetEnd(value->internal_.GetTimestamps().GetEnd());
		internal_.GetActivity().GetAssets().SetLargeImage(value->internal_.GetAssets().GetLargeImage());
		internal_.GetActivity().GetAssets().SetLargeText(value->internal_.GetAssets().GetLargeText());
		internal_.GetActivity().GetAssets().SetSmallImage(value->internal_.GetAssets().GetSmallImage());
		internal_.GetActivity().GetAssets().SetSmallText(value->internal_.GetAssets().GetSmallText());
		internal_.GetActivity().GetParty().SetId(value->internal_.GetParty().GetId());
		internal_.GetActivity().GetParty().GetSize().SetCurrentSize(value->internal_.GetParty().GetSize().GetCurrentSize());
		internal_.GetActivity().GetParty().GetSize().SetMaxSize(value->internal_.GetParty().GetSize().GetMaxSize());
		internal_.GetActivity().GetParty().SetPrivacy(value->internal_.GetParty().GetPrivacy());
		internal_.GetActivity().GetSecrets().SetMatch(value->internal_.GetSecrets().GetMatch());
		internal_.GetActivity().GetSecrets().SetJoin(value->internal_.GetSecrets().GetJoin());
		internal_.GetActivity().GetSecrets().SetSpectate(value->internal_.GetSecrets().GetSpectate());
		internal_.GetActivity().SetInstance(value->internal_.GetInstance());
		internal_.GetActivity().SetSupportedPlatforms(value->internal_.GetSupportedPlatforms());
	')
	function set_activity(value:Activity):Activity {
		return activity;
	}
}

@:include('types.h')
@:include('discord_game_sdk/User.h')
@:include('discord_game_sdk/Presence.h')
@:native('discord::Relationship')
@:structAccess extern class DiscordRelationship {}
@:structInit class Relationship {
	@:allow(discord_game_sdk)
	var internal_:DiscordRelationship;

	@:functionCode('internal_ = discord::Relationship();')
	public function new(?type:RelationshipType, ?user:User, ?presence:Presence) {
		if (type != null) this.type = type;
		if (user != null) this.user = user;
		if (presence != null) this.presence = presence;
	}

	public var type(get, set):RelationshipType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():RelationshipType {
		return None;
	}
	@:functionCode('internal_.SetType((discord::RelationshipType)value);')
	function set_type(value:RelationshipType):RelationshipType {
		return type;
	}

	var _user:User = {};
	public var user(get, set):User;
	@:functionCode('_user->internal_ = internal_.GetUser();')
	function get_user():User {
		return _user;
	}
	@:functionCode('
		internal_.GetUser().SetId(value->internal_.GetId());
		internal_.GetUser().SetUsername(value->internal_.GetUsername());
		internal_.GetUser().SetDiscriminator(value->internal_.GetDiscriminator());
		internal_.GetUser().SetAvatar(value->internal_.GetAvatar());
		internal_.GetUser().SetBot(value->internal_.GetBot());
	')
	function set_user(value:User):User {
		return user;
	}

	var _presence:Presence = {};
	public var presence(get, set):Presence;
	@:functionCode('_presence->internal_ = internal_.GetPresence();')
	function get_presence():Presence {
		return _presence;
	}
	@:functionCode('
		internal_.GetPresence().GetActivity().SetType(value->internal_.GetActivity().GetType());
		internal_.GetPresence().GetActivity().SetType(value->internal_.GetActivity().GetType());
		internal_.GetPresence().GetActivity().SetApplicationId(value->internal_.GetActivity().GetApplicationId());
		internal_.GetPresence().GetActivity().SetName(value->internal_.GetActivity().GetName());
		internal_.GetPresence().GetActivity().SetState(value->internal_.GetActivity().GetState());
		internal_.GetPresence().GetActivity().SetDetails(value->internal_.GetActivity().GetDetails());
		internal_.GetPresence().GetActivity().GetTimestamps().SetStart(value->internal_.GetActivity().GetTimestamps().GetStart());
		internal_.GetPresence().GetActivity().GetTimestamps().SetEnd(value->internal_.GetActivity().GetTimestamps().GetEnd());
		internal_.GetPresence().GetActivity().GetAssets().SetLargeImage(value->internal_.GetActivity().GetAssets().GetLargeImage());
		internal_.GetPresence().GetActivity().GetAssets().SetLargeText(value->internal_.GetActivity().GetAssets().GetLargeText());
		internal_.GetPresence().GetActivity().GetAssets().SetSmallImage(value->internal_.GetActivity().GetAssets().GetSmallImage());
		internal_.GetPresence().GetActivity().GetAssets().SetSmallText(value->internal_.GetActivity().GetAssets().GetSmallText());
		internal_.GetPresence().GetActivity().GetParty().SetId(value->internal_.GetActivity().GetParty().GetId());
		internal_.GetPresence().GetActivity().GetParty().GetSize().SetCurrentSize(value->internal_.GetActivity().GetParty().GetSize().GetCurrentSize());
		internal_.GetPresence().GetActivity().GetParty().GetSize().SetMaxSize(value->internal_.GetActivity().GetParty().GetSize().GetMaxSize());
		internal_.GetPresence().GetActivity().GetParty().SetPrivacy(value->internal_.GetActivity().GetParty().GetPrivacy());
		internal_.GetPresence().GetActivity().GetSecrets().SetMatch(value->internal_.GetActivity().GetSecrets().GetMatch());
		internal_.GetPresence().GetActivity().GetSecrets().SetJoin(value->internal_.GetActivity().GetSecrets().GetJoin());
		internal_.GetPresence().GetActivity().GetSecrets().SetSpectate(value->internal_.GetActivity().GetSecrets().GetSpectate());
		internal_.GetPresence().GetActivity().SetInstance(value->internal_.GetActivity().GetInstance());
		internal_.GetPresence().GetActivity().SetSupportedPlatforms(value->internal_.GetActivity().GetSupportedPlatforms());
	')
	function set_presence(value:Presence):Presence {
		return presence;
	}
}

@:include('types.h')
@:native('discord::Lobby')
@:structAccess extern class DiscordLobby {}
@:structInit class Lobby {
	@:allow(discord_game_sdk)
	var internal_:DiscordLobby;

	@:functionCode('internal_ = discord::Lobby();')
	public function new(?id:LobbyId, ?type:LobbyType, ?ownerId:UserId, ?secret:LobbySecret, ?capacity:UInt32, ?locked:Bool) {
		if (id != null) this.id = id;
		if (type != null) this.type = type;
		if (ownerId != null) this.ownerId = ownerId;
		if (secret != null) this.secret = secret;
		if (capacity != null) this.capacity = capacity;
		if (locked != null) this.locked = locked;
	}

	public var id(get, set):LobbyId;
	@:functionCode('return internal_.GetId();')
	function get_id():LobbyId {
		return 0;
	}
	@:functionCode('internal_.SetId(value);')
	function set_id(value:LobbyId):LobbyId {
		return id;
	}

	public var type(get, set):LobbyType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():LobbyType {
		return Private;
	}
	@:functionCode('internal_.SetType((discord::LobbyType)value);')
	function set_type(value:LobbyType):LobbyType {
		return type;
	}

	public var ownerId(get, set):UserId;
	@:functionCode('return internal_.GetOwnerId();')
	function get_ownerId():UserId {
		return 0;
	}
	@:functionCode('internal_.SetOwnerId(value);')
	function set_ownerId(value:UserId):UserId {
		return ownerId;
	}

	public var secret(get, set):LobbySecret;
	@:functionCode('return internal_.GetSecret();')
	function get_secret():LobbySecret {
		return '';
	}
	@:functionCode('internal_.SetSecret(value);')
	function set_secret(value:LobbySecret):LobbySecret {
		return secret;
	}

	public var capacity(get, set):UInt32;
	@:functionCode('return internal_.GetCapacity();')
	function get_capacity():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetCapacity(value);')
	function set_capacity(value:UInt32):UInt32 {
		return capacity;
	}

	public var locked(get, set):Bool;
	@:functionCode('return internal_.GetLocked();')
	function get_locked():Bool {
		return false;
	}
	@:functionCode('internal_.SetLocked(value);')
	function set_locked(value:Bool):Bool {
		return locked;
	}
}

@:include('types.h')
@:native('discord::ImeUnderline')
@:structAccess extern class DiscordImeUnderline {}
@:structInit class ImeUnderline {
	@:allow(discord_game_sdk)
	var internal_:DiscordImeUnderline;

	@:functionCode('internal_ = discord::ImeUnderline();')
	public function new(?from:Int32, ?to:Int32, ?color:UInt32, ?backgroundColor:UInt32, ?thick:Bool) {
		if (from != null) this.from = from;
		if (to != null) this.to = to;
		if (color != null) this.color = color;
		if (backgroundColor != null) this.backgroundColor = backgroundColor;
		if (thick != null) this.thick = thick;
	}

	public var from(get, set):Int32;
	@:functionCode('return internal_.GetFrom();')
	function get_from():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetFrom(value);')
	function set_from(value:Int32):Int32 {
		return from;
	}

	public var to(get, set):Int32;
	@:functionCode('return internal_.GetTo();')
	function get_to():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetTo(value);')
	function set_to(value:Int32):Int32 {
		return to;
	}

	public var color(get, set):UInt32;
	@:functionCode('return internal_.GetColor();')
	function get_color():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetColor(value);')
	function set_color(value:UInt32):UInt32 {
		return color;
	}

	public var backgroundColor(get, set):UInt32;
	@:functionCode('return internal_.GetBackgroundColor();')
	function get_backgroundColor():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetBackgroundColor(value);')
	function set_backgroundColor(value:UInt32):UInt32 {
		return backgroundColor;
	}

	public var thick(get, set):Bool;
	@:functionCode('return internal_.GetThick();')
	function get_thick():Bool {
		return false;
	}
	@:functionCode('internal_.SetThick(value);')
	function set_thick(value:Bool):Bool {
		return thick;
	}
}

@:include('types.h')
@:native('discord::Rect')
@:structAccess extern class DiscordRect {}
@:structInit class Rect {
	@:allow(discord_game_sdk)
	var internal_:DiscordRect;

	@:functionCode('internal_ = discord::Rect();')
	public function new(?left:Int32, ?top:Int32, ?right:Int32, ?bottom:Int32) {
		if (left != null) this.left = left;
		if (top != null) this.top = top;
		if (right != null) this.right = right;
		if (bottom != null) this.bottom = bottom;
	}

	public var left(get, set):Int32;
	@:functionCode('return internal_.GetLeft();')
	function get_left():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetLeft(value);')
	function set_left(value:Int32):Int32 {
		return left;
	}

	public var top(get, set):Int32;
	@:functionCode('return internal_.GetTop();')
	function get_top():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetTop(value);')
	function set_top(value:Int32):Int32 {
		return top;
	}

	public var right(get, set):Int32;
	@:functionCode('return internal_.GetRight();')
	function get_right():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetRight(value);')
	function set_right(value:Int32):Int32 {
		return right;
	}

	public var bottom(get, set):Int32;
	@:functionCode('return internal_.GetBottom();')
	function get_bottom():Int32 {
		return 0;
	}
	@:functionCode('internal_.SetBottom(value);')
	function set_bottom(value:Int32):Int32 {
		return bottom;
	}
}

@:include('types.h')
@:native('discord::FileStat')
@:structAccess extern class DiscordFileStat {}
@:structInit class FileStat {
	@:allow(discord_game_sdk)
	var internal_:DiscordFileStat;

	@:functionCode('internal_ = discord::FileStat();')
	public function new(?filename:String, ?size:UInt64, ?lastModified:UInt64) {
		if (filename != null) this.filename = filename;
		if (size != null) this.size = size;
		if (lastModified != null) this.lastModified = lastModified;
	}

	public var filename(get, set):String;
	@:functionCode('return internal_.GetFilename();')
	function get_filename():String {
		return '';
	}
	@:functionCode('internal_.SetFilename(value);')
	function set_filename(value:String):String {
		return filename;
	}

	public var size(get, set):UInt64;
	@:functionCode('return internal_.GetSize();')
	function get_size():UInt64 {
		return 0;
	}
	@:functionCode('internal_.SetSize(value);')
	function set_size(value:UInt64):UInt64 {
		return size;
	}

	public var lastModified(get, set):UInt64;
	@:functionCode('return internal_.GetLastModified();')
	function get_lastModified():UInt64 {
		return 0;
	}
	@:functionCode('internal_.SetLastModified(value);')
	function set_lastModified(value:UInt64):UInt64 {
		return lastModified;
	}
}

@:include('types.h')
@:native('discord::Entitlement')
@:structAccess extern class DiscordEntitlement {}
@:structInit class Entitlement {
	@:allow(discord_game_sdk)
	var internal_:DiscordEntitlement;

	@:functionCode('internal_ = discord::Entitlement();')
	public function new(?id:Snowflake, ?type:EntitlementType, ?skuId:Snowflake) {
		if (id != null) this.id = id;
		if (type != null) this.type = type;
		if (skuId != null) this.skuId = skuId;
	}

	public var id(get, set):Snowflake;
	@:functionCode('return internal_.GetId();')
	function get_id():Snowflake {
		return 0;
	}
	@:functionCode('internal_.SetId(value);')
	function set_id(value:Snowflake):Snowflake {
		return id;
	}

	public var type(get, set):EntitlementType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():EntitlementType {
		return Purchase;
	}
	@:functionCode('internal_.SetType((discord::EntitlementType)value);')
	function set_type(value:EntitlementType):EntitlementType {
		return type;
	}

	public var skuId(get, set):Snowflake;
	@:functionCode('return internal_.GetSkuId();')
	function get_skuId():Snowflake {
		return 0;
	}
	@:functionCode('internal_.SetSkuId(value);')
	function set_skuId(value:Snowflake):Snowflake {
		return skuId;
	}
}

@:include('types.h')
@:native('discord::SkuPrice')
@:structAccess extern class DiscordSkuPrice {}
@:structInit class SkuPrice {
	@:allow(discord_game_sdk)
	var internal_:DiscordSkuPrice;

	@:functionCode('internal_ = discord::SkuPrice')
	public function new(?amount:UInt32, ?currency:String) {
		if (amount != null) this.amount = amount;
		if (currency != null) this.currency = currency;
	}

	public var amount(get, set):UInt32;
	@:functionCode('return internal_.GetAmount();')
	function get_amount():UInt32 {
		return 0;
	}
	@:functionCode('internal_.SetAmount(value);')
	function set_amount(value:UInt32):UInt32 {
		return amount;
	}

	public var currency(get, set):String;
	@:functionCode('return internal_.GetCurrency();')
	function get_currency():String {
		return '';
	}
	@:functionCode('internal_.SetCurrency(value);')
	function set_currency(value:String):String {
		return currency;
	}
}

@:include('types.h')
@:include('discord_game_sdk/SkuPrice.h')
@:native('discord::Sku')
@:structAccess extern class DiscordSku {}
@:structInit class Sku {
	@:allow(discord_game_sdk)
	var internal_:DiscordSku;

	@:functionCode('internal_ = discord::Sku();')
	public function new(?id:Snowflake, ?type:SkuType, ?name:String, ?price:SkuPrice) {
		if (id != null) this.id = id;
		if (type != null) this.type = type;
		if (name != null) this.name = name;
		if (price != null) this.price = (price != null ? price : {});
	}

	public var id(get, set):Snowflake;
	@:functionCode('return internal_.GetId();')
	function get_id():Snowflake {
		return 0;
	}
	@:functionCode('internal_.SetId(value);')
	function set_id(value:Snowflake):Snowflake {
		return id;
	}

	public var type(get, set):SkuType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():SkuType {
		return Application;
	}
	@:functionCode('internal_.SetType((discord::SkuType)value);')
	function set_type(value:SkuType):SkuType {
		return type;
	}

	public var name(get, set):String;
	@:functionCode('return internal_.GetName();')
	function get_name():String {
		return '';
	}
	@:functionCode('internal_.SetName(value);')
	function set_name(value:String):String {
		return name;
	}

	var _price:SkuPrice = {};
	public var price(get, set):SkuPrice;
	@:functionCode('_price->internal_ = internal_.GetPrice();')
	function get_price():SkuPrice {
		return _price;
	}
	@:functionCode('
		internal_.GetPrice().SetAmount(value->internal_.GetAmount());
		internal_.GetPrice().SetCurrency(value->internal_.GetCurrency());
	')
	function set_price(value:SkuPrice):SkuPrice {
		return price;
	}
}

@:include('types.h')
@:native('discord::InputMode')
@:structAccess extern class DiscordInputMode {}
@:structInit class InputMode {
	@:allow(discord_game_sdk)
	var internal_:DiscordInputMode;

	@:functionCode('internal_ = discord::InputMode();')
	public function new(?type:InputModeType, ?shortcut:String) {
		if (type != null) this.type = type;
		if (shortcut != null) this.shortcut = shortcut;
	}

	public var type(get, set):InputModeType;
	@:functionCode('return (int)internal_.GetType();')
	function get_type():InputModeType {
		return VoiceActivity;
	}
	@:functionCode('internal_.SetType((discord::InputModeType)value);')
	function set_type(value:InputModeType):InputModeType {
		return type;
	}

	public var shortcut(get, set):String;
	@:functionCode('return internal_.GetShortcut();')
	function get_shortcut():String {
		return '';
	}
	@:functionCode('internal_.SetShortcut(value);')
	function set_shortcut(value:String):String {
		return shortcut;
	}
}

@:include('types.h')
@:native('discord::UserAchievement')
@:structAccess extern class DiscordUserAchievement {}
@:structInit class UserAchievement {
	@:allow(discord_game_sdk)
	var internal_:DiscordUserAchievement;

	@:functionCode('internal_ = discord::UserAchievement();')
	public function new(?userId:Snowflake, ?achievementId:Snowflake, ?percentComplete:UInt8, ?unlockedAt:String) {
		if (userId != null) this.userId = userId;
		if (achievementId != null) this.achievementId = achievementId;
		if (percentComplete != null) this.percentComplete = percentComplete;
		if (unlockedAt != null) this.unlockedAt = unlockedAt;
	}

	public var userId(get, set):Snowflake;
	@:functionCode('return internal_.GetUserId();')
	function get_userId():Snowflake {
		return 0;
	}
	@:functionCode('internal_.SetUserId(value);')
	function set_userId(value:Snowflake):Snowflake {
		return userId;
	}

	public var achievementId(get, set):Snowflake;
	@:functionCode('return internal_.GetAchievementId();')
	function get_achievementId():Snowflake {
		return 0;
	}
	@:functionCode('internal_.SetAchievementId(value);')
	function set_achievementId(value:Snowflake):Snowflake {
		return achievementId;
	}

	public var percentComplete(get, set):UInt8;
	@:functionCode('return internal_.GetPercentComplete();')
	function get_percentComplete():UInt8 {
		return 0;
	}
	@:functionCode('internal_.SetPercentComplete(value);')
	function set_percentComplete(value:UInt8):UInt8 {
		return percentComplete;
	}

	public var unlockedAt(get, set):DateTime;
	@:functionCode('return internal_.GetUnlockedAt();')
	function get_unlockedAt():DateTime {
		return '';
	}
	@:functionCode('internal_.SetUnlockedAt(value);')
	function set_unlockedAt(value:DateTime):DateTime {
		return unlockedAt;
	}
}

@:include('types.h')
@:native('discord::LobbyTransaction')
@:structAccess extern class DiscordLobbyTransaction {}
class LobbyTransaction {
	@:allow(discord_game_sdk)
	var internal_:DiscordLobbyTransaction;
	@:functionCode('internal_ = discord::LobbyTransaction();')
	public function new() {}

	@:functionCode('return (int)internal_.SetType((discord::LobbyType)type);')
	public function setType(type:LobbyType):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.SetOwner(ownerId);')
	public function setOwner(ownerId:UserId):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.SetCapacity(capacity);')
	public function setCapacity(capacity:UInt32):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.SetMetadata(key, value);')
	public function setMetadata(key:MetadataKey, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.DeleteMetadata(key);')
	public function deleteMetadata(key:MetadataKey):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.SetLocked(locked);')
	public function setLocked(locked:Bool):Result {
		return Ok;
	}

	/*@:functionCode('return internal_.Recieve();')
	public function recieve():RawPointer<RawPointer<DiscordLobbyTransaction>> {
		return null;
	}

	@:functionCode('return internal_.Internal();')
	public function internal():RawPointer<DiscordLobbyTransaction> {
		return null;
	}*/
}

@:include('types.h')
@:native('discord::LobbyMemberTransaction')
@:structAccess extern class DiscordLobbyMemberTransaction {}
class LobbyMemberTransaction {
	@:allow(discord_game_sdk)
	var internal_:DiscordLobbyMemberTransaction;

	@:functionCode('internal_ = discord::LobbyMemberTransaction();')
	public function new() {}

	@:functionCode('return (int)internal_.SetMetadata(key, value);')
	public function setMetadata(key:MetadataKey, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.DeleteMetadata(key);')
	public function deleteMetadata(key:MetadataKey):Result {
		return Ok;
	}

	/*@:functionCode('return internal_.Recieve();')
	public function recieve():RawPointer<RawPointer<DiscordLobbyMemberTransaction>> {
		return null;
	}

	@:functionCode('return internal_.Internal();')
	public function internal():RawPointer<DiscordLobbyMemberTransaction> {
		return null;
	}*/
}

@:include('types.h')
@:native('discord::LobbySearchQuery')
@:structAccess extern class DiscordLobbySearchQuery {}
class LobbySearchQuery {
	@:allow(discord_game_sdk)
	var internal_:DiscordLobbySearchQuery;

	@:functionCode('internal_ = discord::LobbySearchQuery();')
	public function new() {}

	@:functionCode('return (int)internal_.Filter(key, (discord::LobbySearchComparison)comparison, (discord::LobbySearchCast)fuckinCast, value);')
	public function filter(key:MetadataKey, comparison:LobbySearchComparison, fuckinCast:LobbySearchCast, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.Sort(key, (discord::LobbySearchCast)fuckinCast, value);')
	public function sort(key:MetadataKey, fuckinCast:LobbySearchCast, value:MetadataValue):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.Limit(limit);')
	public function limit(limit:UInt32):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_.Distance((discord::LobbySearchDistance)distance);')
	public function distance(distance:LobbySearchDistance):Result {
		return Ok;
	}

	/*@:functionCode('return internal_.Recieve();')
	public function recieve():RawPointer<RawPointer<DiscordLobbySearchQuery>> {
		return null;
	}

	@:functionCode('return internal_.Internal();')
	public function internal():RawPointer<DiscordLobbySearchQuery> {
		return null;
	}*/
}