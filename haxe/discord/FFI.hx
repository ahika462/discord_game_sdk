package discord;

import cpp.RawPointer;
import cpp.UInt32;
import cpp.UInt8;
import cpp.UInt64;
import cpp.Int32;
import cpp.Char;
import cpp.Int64;

@:build(discord.Macros.native('EDiscordResult'))
extern enum abstract EDiscordResult(Int) {
	var DiscordResult_Ok = 0;
	var DiscordResult_ServiceUnavailable = 1;
	var DiscordResult_InvalidVersion = 2;
	var DiscordResult_LockFailed = 3;
	var DiscordResult_InternalError = 4;
	var DiscordResult_InvalidPayload = 5;
	var DiscordResult_InvalidCommand = 6;
	var DiscordResult_InvalidPermissions = 7;
	var DiscordResult_NotFetched = 8;
	var DiscordResult_NotFound = 9;
	var DiscordResult_Conflict = 10;
	var DiscordResult_InvalidSecret = 11;
	var DiscordResult_InvalidJoinSecret = 12;
	var DiscordResult_NoEligibleActivity = 13;
	var DiscordResult_InvalidInvite = 14;
	var DiscordResult_NotAuthenticated = 15;
	var DiscordResult_InvalidAccessToken = 16;
	var DiscordResult_ApplicationMismatch = 17;
	var DiscordResult_InvalidDataUrl = 18;
	var DiscordResult_InvalidBase64 = 19;
	var DiscordResult_NotFiltered = 20;
	var DiscordResult_LobbyFull = 21;
	var DiscordResult_InvalidLobbySecret = 22;
	var DiscordResult_InvalidFilename = 23;
	var DiscordResult_InvalidFileSize = 24;
	var DiscordResult_InvalidEntitlement = 25;
	var DiscordResult_NotInstalled = 26;
	var DiscordResult_NotRunning = 27;
	var DiscordResult_InsufficientBuffer = 28;
	var DiscordResult_PurchaseCanceled = 29;
	var DiscordResult_InvalidGuild = 30;
	var DiscordResult_InvalidEvent = 31;
	var DiscordResult_InvalidChannel = 32;
	var DiscordResult_InvalidOrigin = 33;
	var DiscordResult_RateLimited = 34;
	var DiscordResult_OAuth2Error = 35;
	var DiscordResult_SelectChannelTimeout = 36;
	var DiscordResult_GetGuildTimeout = 37;
	var DiscordResult_SelectVoiceForceRequired = 38;
	var DiscordResult_CaptureShortcutAlreadyListening = 39;
	var DiscordResult_UnauthorizedForAchievement = 40;
	var DiscordResult_InvalidGiftCode = 41;
	var DiscordResult_PurchaseError = 42;
	var DiscordResult_TransactionAborted = 43;
	var DiscordResult_DrawingInitFailed = 44;
}

@:build(discord.Macros.native('EDiscordCreateFlags'))
extern enum abstract EDiscordCreateFlags(Int) {
	var DiscordCreateFlags_Default = 0;
	var DiscordCreateFlags_NoRequireDiscord = 1;
}

@:build(discord.Macros.native('EDiscordLogLevel'))
extern enum abstract EDiscordLogLevel(Int) {
	var DiscordLogLevel_Error = 1;
	var DiscordLogLevel_Warn;
	var DiscordLogLevel_Info;
	var DiscordLogLevel_Debug;
}

@:build(discord.Macros.native('EDiscordUserFlag'))
extern enum abstract EDiscordUserFlag(Int) {
	var DiscordUserFlag_Partner = 2;
	var DiscordUserFlag_HypeSquadEvents = 4;
	var DiscordUserFlag_HypeSquadHouse1 = 64;
	var DiscordUserFlag_HypeSquadHouse2 = 128;
	var DiscordUserFlag_HypeSquadHouse3 = 256;
}

@:build(discord.Macros.native('EDiscordPremiumType'))
extern enum abstract EDiscordPremiumType(Int) {
	var DiscordPremiumType_None = 0;
	var DiscordPremiumType_Tier1 = 1;
	var DiscordPremiumType_Tier2 = 2;
}

@:build(discord.Macros.native('EDiscordImageType'))
extern enum abstract EDiscordImageType(Int) {
	var DiscordImageType_User;
}

@:build(discord.Macros.native('EDiscordActivityPartyPrivacy'))
extern enum abstract EDiscordActivityPartyPrivacy(Int) {
	var DiscordActivityPartyPrivacy_Private = 0;
	var DiscordActivityPartyPrivacy_Public = 1;
}

@:build(discord.Macros.native('EDiscordActivityType'))
extern enum abstract EDiscordActivityType(Int) {
	var DiscordActivityType_Playing;
	var DiscordActivityType_Streaming;
	var DiscordActivityType_Listening;
	var DiscordActivityType_Watching;
}

@:build(discord.Macros.native('EDiscordActivityActionType'))
extern enum abstract EDiscordActivityActionType(Int) {
	var DiscordActivityActionType_Join = 1;
	var DiscordActivityActionType_Spectate;
}

@:build(discord.Macros.native('EDiscordActivitySupportedPlatformFlags'))
extern enum abstract EDiscordActivitySupportedPlatformFlags(Int) {
	var DiscordActivitySupportedPlatformFlags_Desktop = 1;
	var DiscordActivitySupportedPlatformFlags_Android = 2;
	var DiscordActivitySupportedPlatformFlags_iOS = 4;
}

@:build(discord.Macros.native('EDiscordActivityJoinRequestReply'))
extern enum abstract EDiscordActivityJoinRequestReply(Int) {
	var DiscordActivityJoinRequestReply_No;
	var DiscordActivityJoinRequestReply_Yes;
	var DiscordActivityJoinRequestReply_Ignore;
}

@:build(discord.Macros.native('EDiscordStatus'))
extern enum abstract EDiscordStatus(Int) {
	var DiscordStatus_Offline = 0;
	var DiscordStatus_Online = 1;
	var DiscordStatus_Idle = 2;
	var DiscordStatus_DoNotDisturb = 3;
}

@:build(discord.Macros.native('EDiscordRelationshipType'))
extern enum abstract EDiscordRelationshipType(Int) {
	var DiscordRelationshipType_None;
	var DiscordRelationshipType_Friend;
	var DiscordRelationshipType_Blocked;
	var DiscordRelationshipType_PendingIncoming;
	var DiscordRelationshipType_PendingOutgoing;
	var DiscordRelationshipType_Implicit;
}

@:build(discord.Macros.native('EDiscordLobbyType'))
extern enum abstract EDiscordLobbyType(Int) {
	var DiscordLobbyType_Private = 1;
	var DiscordLobbyType_Public;
}

@:build(discord.Macros.native('EDiscordLobbySearchComparison'))
extern enum abstract EDiscordLobbySearchComparison(Int) {
	var DiscordLobbySearchComparison_LessThanOrEqual = -2;
	var DiscordLobbySearchComparison_LessThan;
	var DiscordLobbySearchComparison_Equal;
	var DiscordLobbySearchComparison_GreaterThan;
	var DiscordLobbySearchComparison_GreaterThanOrEqual;
	var DiscordLobbySearchComparison_NotEqual;
}

@:build(discord.Macros.native('EDiscordLobbySearchCast'))
extern enum abstract EDiscordLobbySearchCast(Int) {
	var DiscordLobbySearchCast_String = 1;
	var DiscordLobbySearchCast_Number;
}

@:build(discord.Macros.native('EDiscordLobbySearchDistance'))
extern enum abstract EDiscordLobbySearchDistance(Int) {
	var DiscordLobbySearchDistance_Local;
	var DiscordLobbySearchDistance_Default;
	var DiscordLobbySearchDistance_Extended;
	var DiscordLobbySearchDistance_Global;
}

@:build(discord.Macros.native('EDiscordKeyVariant'))
extern enum abstract EDiscordKeyVariant(Int) {
	var DiscordKeyVariant_Normal;
	var DiscordKeyVariant_Right;
	var DiscordKeyVariant_Left;
}

@:build(discord.Macros.native('EDiscordMouseButton'))
extern enum abstract EDiscordMouseButton(Int) {
	var DiscordMouseButton_Left;
	var DiscordMouseButton_Middle;
	var DiscordMouseButton_Right;
}

@:build(discord.Macros.native('EDiscordEntitlementType'))
extern enum abstract EDiscordEntitlementType(Int) {
	var DiscordEntitlementType_Purchase = 1;
	var DiscordEntitlementType_PremiumSubscription;
	var DiscordEntitlementType_DeveloperGift;
	var DiscordEntitlementType_TestModePurchase;
	var DiscordEntitlementType_FreePurchase;
	var DiscordEntitlementType_UserGift;
	var DiscordEntitlementType_PremiumPurchase;
}

@:build(discord.Macros.native('EDiscordSkuType'))
extern enum abstract EDiscordSkuType(Int) {
	var DiscordSkuType_Application = 1;
	var DiscordSkuType_DLC;
	var DiscordSkuType_Consumable;
	var DiscordSkuType_Bundle;
}

@:build(discord.Macros.native('EDiscordInputModeType'))
extern enum abstract EDiscordInputModeType(Int) {
	var DiscordInputModeType_VoiceActivity = 0;
	var DiscordInputModeType_PushToTalk;
}

typedef DiscordClientId = Int64;
typedef DiscordVersion = Int32;
typedef DiscordSnowflake = Int64;
typedef DiscordTimestamp = Int64;
typedef DiscordUserId = DiscordSnowflake;
typedef DiscordLocale = Array<Char>;
typedef DiscordBranch = Array<Char>;
typedef DiscordLobbyId = DiscordSnowflake;
typedef DiscordLobbySecret = Array<Char>;
typedef DiscordMetadataKey = Array<Char>;
typedef DiscordMetadataValue = Array<Char>;
typedef DiscordNetworkPeerId = UInt64;
typedef DiscordNetworkChannelId = UInt8;
// swapchain and message
typedef DiscordPath = Array<Char>;
typedef DiscordDateTime = Array<Char>;

@:build(discord.Macros.native('DiscordUser'))
@:publicFields @:structAccess extern class DiscordUser {
	var id:Int64;
	var username:Array<Char>;
	var discriminator:Array<Char>;
	var avatar:Array<Char>;
	var bot:Bool;
}

@:build(discord.Macros.native('DiscordOAuth2Token'))
@:publicFields @:structAccess extern class DiscordOAuth2Token {
	var access_token:Array<Char>;
	var scopes:Array<Char>;
	var expires:Int64;
}

@:build(discord.Macros.native('DiscordImageHandle'))
@:publicFields @:structAccess extern class DiscordImageHandle {
	var type:EDiscordImageType;
	var id:Int64;
	var size:UInt32;
}

@:build(discord.Macros.native('DiscordImageDimensions'))
@:publicFields @:structAccess extern class DiscordImageDimensions {
	var width:UInt32;
	var height:UInt32;
}

@:build(discord.Macros.native('DiscordActivityTimestamps'))
@:publicFields @:structAccess extern class DiscordActivityTimestamps {
	var start:DiscordTimestamp;
	var end:DiscordTimestamp;
}

@:build(discord.Macros.native('DiscordActivityAssets'))
@:publicFields @:structAccess extern class DiscordActivityAssets {
	var large_image:Array<Char>;
	var large_text:Array<Char>;
	var small_image:Array<Char>;
	var small_text:Array<Char>;
}

@:build(discord.Macros.native('DiscordPartySize'))
@:publicFields @:structAccess extern class DiscordPartySize {
	var current_size:Int32;
	var max_size:Int32;
}

@:build(discord.Macros.native('DiscordActivityParty'))
@:publicFields @:structAccess extern class DiscordActivityParty {
	var id:Array<Char>;
	var size:DiscordPartySize;
	var privacy:EDiscordActivityPartyPrivacy;
}

@:build(discord.Macros.native('DiscordActivitySecrets'))
@:publicFields @:structAccess extern class DiscordActivitySecrets {
	var match:Array<Char>;
	var join:Array<Char>;
	var spectate:Array<Char>;
}

@:build(discord.Macros.native('DiscordActivity'))
@:publicFields @:structAccess extern class DiscordActivity {
	var type:EDiscordActivityType;
	var application_id:Int64;
	var name:Array<Char>;
	var state:Array<Char>;
	var details:Array<Char>;
	var timestamps:DiscordActivityTimestamps;
	var assets:DiscordActivityAssets;
	var party:DiscordActivityParty;
	var secrets:DiscordActivitySecrets;
	var instance:Bool;
	var supported_platforms:UInt32;
}

@:build(discord.Macros.native('DiscordPresence'))
@:publicFields @:structAccess extern class DiscordPresence {
	var status:EDiscordStatus;
	var activity:DiscordActivity;
}

@:build(discord.Macros.native('DiscordRelationship'))
@:publicFields @:structAccess extern class DiscordRelationship {
	var type:EDiscordRelationshipType;
	var user:DiscordUser;
	var presence:DiscordPresence;
}

@:build(discord.Macros.native('DiscordLobby'))
@:publicFields @:structAccess extern class DiscordLobby {
	var id:DiscordLobbyId;
	var type:EDiscordLobbyType;
	var owner_id:DiscordUserId;
	var secret:DiscordLobbySecret;
	var capacity:UInt32;
	var locked:Bool;
}

@:build(discord.Macros.native('DiscordImeUnderline'))
@:publicFields @:structAccess extern class DiscordImeUnderline {
	var from:Int32;
	var to:Int32;
	var color:UInt32;
	var background_color:UInt32;
	var thick:Bool;
}

@:build(discord.Macros.native('DiscordRect'))
@:publicFields @:structAccess extern class DiscordRect {
	var left:Int32;
	var top:Int32;
	var right:Int32;
	var bottom:Int32;
}

@:build(discord.Macros.native('DiscordFileStat'))
@:publicFields @:structAccess extern class DiscordFileStat {
	var filename:Array<Char>;
	var size:UInt64;
	var last_modified:UInt64;
}

@:build(discord.Macros.native('DiscordEntitlement'))
@:publicFields @:structAccess extern class DiscordEntitlement {
	var id:DiscordSnowflake;
	var type:EDiscordEntitlementType;
	var sku_id:DiscordSnowflake;
}

@:build(discord.Macros.native('DiscordSkuPrice'))
@:publicFields @:structAccess extern class DiscordSkuPrice {
	var amount:UInt32;
	var currency:Array<Char>;
}

@:build(discord.Macros.native('DiscordSku'))
@:publicFields @:structAccess extern class DiscordSku {
	var id:DiscordSnowflake;
	var type:EDiscordSkuType;
	var name:Array<Char>;
	var price:DiscordSkuPrice;
}

@:build(discord.Macros.native('DiscordInputMode'))
@:publicFields @:structAccess extern class DiscordInputMode {
	var type:EDiscordInputModeType;
	var shortcut:Array<Char>;
}

@:build(discord.Macros.native('DiscordUserAchievement'))
@:publicFields @:structAccess extern class DiscordUserAchievement {
	var user_id:DiscordSnowflake;
	var achievement_id:DiscordSnowflake;
	var percent_complete:UInt8;
	var unlocked_at:DiscordDateTime;
}

@:build(discord.Macros.native('IDiscordLobbyTransaction'))
@:structAccess extern class IDiscordLobbyTransaction {
	function set_type(lobby_transaction:RawPointer<IDiscordLobbyTransaction>, type:EDiscordLobbyType):EDiscordResult;
	function set_owner(lobby_transaction:RawPointer<IDiscordLobbyTransaction>, owner_id:DiscordUserId):EDiscordResult;
	function set_capacity(lobby_transaction:RawPointer<IDiscordLobbyTransaction>, capacity:UInt32):EDiscordResult;
	function set_metadata(lobby_transaction:RawPointer<IDiscordLobbyTransaction>, key:DiscordMetadataKey, value:DiscordMetadataValue):EDiscordResult;
	function delete_metadata(lobby_transaction:RawPointer<IDiscordLobbyTransaction>, key:DiscordMetadataKey):EDiscordResult;
	function set_locked(lobby_transaction:RawPointer<IDiscordLobbyTransaction>, locked:Bool):EDiscordResult;
}

@:build(discord.Macros.native('IDiscordLobbyMemberTransaction'))
@:structAccess extern class IDiscordLobbyMemberTransaction {
	function set_metadata(lobby_member_transaction:RawPointer<IDiscordLobbyMemberTransaction>, key:DiscordMetadataKey, value:DiscordMetadataValue):EDiscordResult;
	function delete_metadata(lobby_member_transaction:RawPointer<IDiscordLobbyMemberTransaction>, key:DiscordMetadataKey):EDiscordResult;
}

@:build(discord.Macros.native('IDiscordLobbySearchQuery'))
@:structAccess extern class IDiscordLobbySearchQuery {
	function filter(lobby_search_query:RawPointer<IDiscordLobbySearchQuery>, key:DiscordMetadataKey, comparison:EDiscordLobbySearchComparison, search_cast:EDiscordLobbySearchCast, value:DiscordMetadataValue):EDiscordResult;
}