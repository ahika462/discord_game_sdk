package discord_game_sdk;

import discord_game_sdk.Types;

class UserManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('return (int)core->internal_->UserManager().GetCurrentUser(&currentUser->internal_);')
	public function getCurrentUser(currentUser:User):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->UserManager().GetUser(userId, [callback = std::move(callback)](discord::Result r, discord::User user) {
			discord_game_sdk::User haxed{};
			haxed->internal_ = user;
			const_cast<Dynamic&>(callback)((int)r, haxed);
		});
	')
	public function getUser(userId:UserId, callback:Result->User->Void) {}

	@:functionCode('return (int)core->internal_->UserManager().GetCurrentUserPremiumType((discord::PremiumType*)&premiumType);')
	public function getCurrentUserPremiumType(premiumType:PremiumType):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->UserManager().CurrentUserHasFlag((discord::UserFlag)flag, &hasFlag);')
	public function currentUserHasFlag(flag:UserFlag, hasFlag:Bool):Result {
		return Ok;
	}

	// events
}