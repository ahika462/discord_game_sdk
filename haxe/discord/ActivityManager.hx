package discord;

import cpp.UInt32;
import discord.Types;
import discord._internal.IDiscordActivityManager;
import cpp.RawPointer;

// ActivityEvents

@:cppFileCode('
	#include <memory>
	#include <functional>
')
@:build(DiscordMacros.include(['discord/Activity.h']))
class ActivityManager {
	var internal_:RawPointer<IDiscordActivityManager>;

	@:functionCode('internal_ = IDiscordActivityManager();')
	public function new() {}

	@:functionCode('return (int)internal_->register_command(internal_, const_cast<char*>(command.__s));')
	public function registerCommand(command:String):Result {
		return Ok;
	}

	@:functionCode('return (int)internal_->register_steam(internal_, steamID);')
	public function registerSteam(steamID:UInt32):Result {
		return Ok;
	}

	/*@:functionCode('internal_->UpdateActivity(activity->internal_, [callback = std::move(callback)](EDiscordResult result) {
						const_cast<Dynamic&>(callback)((int)result);
					});')*/

	@:functionCode('std::function<void(int)> _callback = [callback = std::move(callback)](int result) {
						const_cast<Dynamic&>(callback)(result);
					};

					static auto wrapper = [](void* callbackData, EDiscordResult result) -> void {
						std::unique_ptr<std::function<void(int)>> cb(reinterpret_cast<std::function<void(int)>*>(callbackData));
						if (!cb || !(*cb))
							return;
						(*cb)((int)result);
					};
					std::unique_ptr<std::function<void(int)>> cb{};
					cb.reset(new std::function<void(int)>(std::move(_callback)));
					internal_->update_activity(internal_, &activity->internal_, cb.release(), wrapper);')
	public function updateActivity(activity:Activity, callback:(Result)->Void) {}
}