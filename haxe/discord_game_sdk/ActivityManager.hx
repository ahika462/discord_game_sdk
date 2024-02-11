package discord_game_sdk;

import discord_game_sdk.Core;
import cpp.UInt32;
import discord_game_sdk.Types;

class ActivityManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('return (int)core->internal_->ActivityManager().RegisterCommand(command);')
	public function registerCommand(command:String):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->ActivityManager().RegisterSteam(steamId);')
	public function registerSteam(steamId:UInt32):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->ActivityManager().UpdateActivity(activity->internal_, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function updateActivity(activity:Activity, callback:Result->Void) {}

	@:functionCode('
		core->internal_->ActivityManager().ClearActivity([callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function clearActivity(callback:Result->Void) {}

	@:functionCode('
		core->internal_->ActivityManager().SendRequestReply(userId, (discord::ActivityJoinRequestReply)reply, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function sendRequestReply(userId:UserId, reply:ActivityJoinRequestReply, callback:Result->Void) {}

	@:functionCode('
		core->internal_->ActivityManager().SendInvite(userId, (discord::ActivityActionType)type, content, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function sendInvite(userId:UserId, type:ActivityActionType, content:String, callback:Result->Void) {}

	@:functionCode('
		core->internal_->ActivityManager().AcceptInvite(userId, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function acceptInvite(userId:UserId, callback:Result->Void) {}

	// events
}