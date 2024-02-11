package discord_game_sdk;

import cpp.UInt32;
import cpp.Int32;
import discord_game_sdk.Types;

class RelationshipManager {
	var core:Core;
	
	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('
		core->internal_->RelationshipManager().Filter([filter = std::move(filter)](discord::Relationship relationship) {
			discord_game_sdk::Relationship haxed{};
			haxed->internal_ = relationship;
			return const_cast<Dynamic&>(filter)(haxed);
		});
	')
	public function filter(filter:Relationship->Bool) {}

	@:functionCode('return (int)core->internal_->RelationshipManager().Count(&count);')
	public function count(count:Int32):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->RelationshipManager().Get(userId, &relationship->internal_);')
	public function get(userId:UserId, relationship:Relationship):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->RelationshipManager().GetAt(index, &relationship->internal_);')
	public function getAt(index:UInt32, relationship:Relationship):Result {
		return Ok;
	}

	// events
}