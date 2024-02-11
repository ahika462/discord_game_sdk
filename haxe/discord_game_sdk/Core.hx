package discord_game_sdk;

import cpp.RawPointer;
import discord_game_sdk.Types;

@:include('discord.h')
@:native('discord::Core')
@:structAccess extern class DiscordCore {}
class Core {
	@:functionCode('return (int)discord::Core::Create(clientId, flags, &instance->internal_);')
	public static function create(clientId:ClientId, flags:CreateFlags, instance:Core):Result {
		return Ok;
	}

	@:allow(discord_game_sdk)
	var internal_:RawPointer<DiscordCore>;

	@:functionCode('
		internal_ = discord::Core();
	')
	public function new() {
		applicationManager = new ApplicationManager(this);
		userManager = new UserManager(this);
		imageManager = new ImageManager(this);
		activityManager = new ActivityManager(this);
		relationshipManager = new RelationshipManager(this);
		lobbyManager = new LobbyManager(this);
		networkManager = new NetworkManager(this);
		overlayManager = new OverlayManager(this);
		storageManager = new StorageManager(this);
		storeManager = new StoreManager(this);
		voiceManager = new VoiceManager(this);
		achievementManager = new AchievementManager(this);
	}

	@:functionCode('return (int)internal_->RunCallbacks();')
	public function runCallbacks():Result {
		return Ok;
	}

	@:functionCode('
		internal_->SetLogHook((discord::LogLevel)minLevel, [hook = std::move(hook)](discord::LogLevel level, const char* message) {
			const_cast<Dynamic&>(hook)((int)level, message);
		});
	')
	public function setLogHook(minLevel:LogLevel, hook:LogLevel->String->Void) {}

	public var applicationManager(default, null):ApplicationManager;
	public var userManager(default, null):UserManager;
	public var imageManager(default, null):ImageManager;
	public var activityManager(default, null):ActivityManager;
	public var relationshipManager(default, null):RelationshipManager;
	public var lobbyManager(default, null):LobbyManager;
	public var networkManager(default, null):NetworkManager;
	public var overlayManager(default, null):OverlayManager;
	public var storageManager(default, null):StorageManager;
	public var storeManager(default, null):StoreManager;
	public var voiceManager(default, null):VoiceManager;
	public var achievementManager(default, null):AchievementManager;
}