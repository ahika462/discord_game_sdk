package discord_game_sdk;

import haxe.Int32;
import cpp.UInt64;
import discord_game_sdk.Types;
import cpp.UInt32;
import cpp.UInt8;

class StorageManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('return (int)core->internal_->StorageManager().Read(name, &data, dataLength, &read);')
	public function read(name:String, data:UInt8, dataLength:UInt32, read:UInt32):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->StorageManager().ReadAsync(name, [callback = std::move(callback)](discord::Result r, uint8_t* data, uint32_t dataLength) {
			const_cast<Dynamic&>(callback)((int)r, *data, dataLength);
		});
	')
	public function readAsync(name:String, callback:Result->UInt8->UInt32) {}

	@:functionCode('
		core->internal_->StorageManager().ReadAsyncPartial(name, offset, length, [callback = std::move(callback)](discord::Result r, uint8_t* data, uint32_t dataLength) {
			const_cast<Dynamic&>(callback)((int)r, *data, dataLength);
		});
	')
	public function readAsyncPartial(name:String, offset:UInt64, length:UInt64, callback:Result->UInt8->UInt32->Void) {}

	@:functionCode('return (int)core->internal_->StorageManager().Write(name, &data, dataLength);')
	public function write(name:String, data:UInt8, dataLength:UInt32):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->StorageManager().WriteAsync(name, &data, dataLength, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function writeAsync(name:String, data:UInt8, dataLength:UInt32, callback:Result->Void) {}

	@:functionCode('return (int)core->internal_->StorageManager().Delete(name);')
	public function delete(name:String):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->StorageManager().Exists(name, &exists);')
	public function exists(name:String, exists:Bool):Result {
		return Ok;
	}

	@:functionCode('core->internal_->StorageManager().Count(&count);')
	public function count(count:Int32) {}

	@:functionCode('return (int)core->internal_->StorageManager().Stat(name, &stat->internal_);')
	public function stat(name:String, stat:FileStat):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->StorageManager().StatAt(index, &stat->internal_);')
	public function statAt(index:Int32, stat:FileStat):Result {
		return Ok;
	}

	@:functionCode('
		char resized[4096];
		strncpy(resized, path, 4096);
		resized[4096 - 1] = \'\\0\';
		return (int)core->internal_->StorageManager().GetPath(resized);
	')
	public function getPath(path:String):Result {
		return Ok;
	}
}