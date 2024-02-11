package discord_game_sdk;

import cpp.Int32;
import cpp.RawPointer;
import cpp.UInt8;
import discord_game_sdk.Types;

class AchievementManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('
		core->internal_->AchievementManager().SetUserAchievement(achievementId, percentComplete, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function setUserAchievement(achievementId:Snowflake, percentComplete:UInt8, callback:Result->Void) {}

	@:functionCode('
		core->internal_->AchievementManager().FetchUserAchievements([callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function fetchUserAchievements(callback:Result->Void) {}

	@:functionCode('core->internal_->AchievementManager().CountUserAchievements(&count);')
	public function countUserAchievements(count:Int32) {}

	@:functionCode('return (int)core->internal_->AchievementManager().GetUserAchievement(userAchievementId, &userAchievement->internal_);')
	public function getUserAchievement(userAchievementId:Snowflake, userAchievement:UserAchievement):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->AchievementManager().GetUserAchievementAt(index, &userAchievement->internal_);')
	public function getUserAchievementAt(index:Int32, userAchievement:UserAchievement):Result {
		return Ok;
	}

	// events
}