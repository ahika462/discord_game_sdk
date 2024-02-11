package discord_game_sdk;

import cpp.UInt32;
import cpp.UInt8;
import discord_game_sdk.Types;

class ImageManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('
		core->internal_->ImageManager().Fetch(handle->internal_, refresh, [callback = std::move(callback)](discord::Result r, discord::ImageHandle handle) {
			discord_game_sdk::ImageHandle haxed{};
			haxed->internal_ = handle;
			const_cast<Dynamic&>(callback)((int)r, haxed);
		});
	')
	public function fetch(handle:ImageHandle, refresh:Bool, callback:Result->ImageHandle->Void) {}

	@:functionCode('return (int)core->internal_->ImageManager().GetDimensions(handle->internal_, &dimensions->internal_);')
	public function getDimensions(handle:ImageHandle, dimensions:ImageDimensions):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->ImageManager().GetData(handle->internal_, &data, dataLength);')
	public function getData(handle:ImageHandle, data:UInt8, dataLength:UInt32):Result {
		return Ok;
	}
}