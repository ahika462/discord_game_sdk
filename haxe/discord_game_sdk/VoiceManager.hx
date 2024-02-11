package discord_game_sdk;

import cpp.UInt8;
import discord_game_sdk.Types;

class VoiceManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().GetInputMode(&inputMode->internal_);')
	public function getInputMode(inputMode:InputMode):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->VoiceManager().SetInputMode(inputMode->internal_, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function setInputMode(inputMode:InputMode, callback:Result->Void) {}

	@:functionCode('return (int)core->internal_->VoiceManager().IsSelfMute(&mute);')
	public function isSelfMute(mute:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().SetSelfMute(mute);')
	public function setSelfMute(mute:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().IsSelfDeaf(&deaf);')
	public function isSelfDeaf(deaf:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().SetSelfDeaf(deaf);')
	public function setSelfDead(deaf:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().IsLocalMute(userId, &mute);')
	public function isLocalMute(userId:Snowflake, mute:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().SetLocalMute(userId, mute);')
	public function setLocalMute(userId:Snowflake, mute:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().GetLocalVolume(userId, &volume);')
	public function getLocalVolume(userId:Snowflake, volume:UInt8):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->VoiceManager().SetLocalVolume(userId, volume);')
	public function setLocalVolume(userId:Snowflake, volume:UInt8):Result {
		return Ok;
	}

	// events
}