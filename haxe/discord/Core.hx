package discord;

import cpp.UInt64;
import discord.Types;
import discord._internal.IDiscordCore;
import cpp.RawPointer;

@:build(DiscordMacros.load())
@:build(DiscordMacros.include(['./_internal/ffi.h', 'discord/ActivityManager.h']))
@:cppFileCode('
	namespace discord {
		class ActivityEvents {
			public:
				static void DISCORD_CALLBACK onActivityJoin(void* callbackData, const char* secret) {

				}

				static void DISCORD_CALLBACK onActivitySpectate(void* callbackData, const char* secret) {

				}

				static void DISCORD_CALLBACK onActivityJoinRequest(void* callbackData, DiscordUser* user)
				{

				}

				static void DISCORD_CALLBACK onActivityInvite(void* callbackData, EDiscordActivityActionType type, DiscordUser* user, DiscordActivity* activity) {

				}
		};

		/*IDiscordActivityEvents ActivityManager::events_{
			&ActivityEvents::onActivityJoin,
			&ActivityEvents::onActivitySpectate,
			&ActivityEvents::onActivityJoinRequest,
			&ActivityEvents::onActivityInvite
		};*/
	}
')
class Core {
	var internal_:RawPointer<IDiscordCore>;

	@:functionCode('internal_ = IDiscordCore();')
	public function new() {}

	@:functionCode('Core* instanceptr = &instance;
					Core** instanceptrptr = &instanceptr;
	
					if (!instanceptrptr)
						return (int)EDiscordResult::DiscordResult_InternalError;

					(*instanceptrptr) = new Core();
					DiscordCreateParams params{};
					DiscordCreateParamsSetDefault(&params);
					params.client_id = clientID;
					params.flags = flags;
					params.events = nullptr;
					params.event_data = *instanceptrptr;
					params.user_events = nullptr;
					// params.activity_events = &ActivityManager::events_;
					params.relationship_events = nullptr;
					params.lobby_events = nullptr;
					params.network_events = nullptr;
					params.overlay_events = nullptr;
					params.store_events = nullptr;
					params.voice_events = nullptr;
					params.achievement_events = nullptr;
					EDiscordResult result = DiscordCreate(DISCORD_VERSION, &params, &((*instanceptr)->internal_));
					if (result != DiscordResult_Ok || !(*instanceptr)->internal_) {
						delete (*instanceptrptr);
						(*instanceptrptr) = nullptr;
					}
					return (int)result;')
	public static function create(clientID:ClientID, flags:UInt64, instance:Core):Result {
		return Ok;
	}

	@:functionCode('if (internal_) {
		internal_->destroy(internal_);
		internal_ = nullptr;
	}')
	public function destroy() {}

	@:functionCode('return (int)internal_->run_callbacks(internal_);')
	public function runCallbacks():Result {
		return Ok;
	}

	var _activityManager:ActivityManager = new ActivityManager();
	public var activityManager(get, never):ActivityManager;
	@:functionCode('_activityManager->internal_ = internal_->get_activity_manager(internal_);')
	function get_activityManager() {
		return _activityManager;
	}
}