package discord_game_sdk;

import cpp.UInt32;
import cpp.UInt8;
import haxe.Int32;
import discord_game_sdk.Types;

class LobbyManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().GetLobbyCreateTransaction(&transaction->internal_);')
	public function getLobbyCreateTransaction(transaction:LobbyTransaction):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().GetLobbyUpdateTransaction(lobbyId, &transaction->internal_);')
	public function getLobbyUpdateTransaction(lobbyId:LobbyId, transaction:LobbyTransaction):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().GetMemberUpdateTransaction(lobbyId, userId, &transaction->internal_);')
	public function getMemberUpdateTransaction(lobbyId:LobbyId, userId:UserId, transaction:LobbyMemberTransaction):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->LobbyManager().CreateLobby(transaction->internal_, [callback = std::move(callback)](discord::Result r, discord::Lobby lobby) {
			discord_game_sdk::Lobby haxed{};
			haxed->internal_ = lobby;
			const_cast<Dynamic&>(callback)((int)r, haxed);
		});
	')
	public function createLobby(transaction:LobbyTransaction, callback:Result->Lobby->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().UpdateLobby(lobbyId, transaction->internal_, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function updateLobby(lobbyId:LobbyId, transaction:LobbyTransaction, callback:Result->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().DeleteLobby(lobbyId, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function deleteLobby(lobbyId:LobbyId, callback:Result->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().ConnectLobby(lobbyId, secret, [callback = std::move(callback)](discord::Result r, discord::Lobby lobby) {
			discord_game_sdk::Lobby haxed{};
			haxed->internal_ = lobby;
			const_cast<Dynamic&>(callback)((int)r, haxed);
		});
	')
	public function connectLobby(lobbyId:LobbyId, secret:LobbySecret, callback:Result->Lobby->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().ConnectLobbyWithActivitySecret(activitySecret, [callback = std::move(callback)](discord::Result r, discord::Lobby lobby) {
			discord_game_sdk::Lobby haxed{};
			haxed->internal_ = lobby;
			const_cast<Dynamic&>(callback)((int)r, haxed);
		});
	')
	public function connectLobbyWithActivitySecret(activitySecret:LobbySecret, callback:Result->Lobby->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().DisconnectLobby(lobbyId, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function disconnectLobby(lobbyId:LobbyId, callback:Result->Void) {}

	@:functionCode('return (int)core->internal_->LobbyManager().GetLobby(lobbyId, &lobby->internal_);')
	public function getLobby(lobbyId:LobbyId, lobby:Lobby):Result {
		return Ok;
	}

	@:functionCode('
		char resized[128];
		strncpy(resized, secret, 128);
		resized[128 - 1] = \'\\0\';
		return (int)core->internal_->LobbyManager().GetLobbyActivitySecret(lobbyId, resized);
	')
	public function getLobbyActivitySecret(lobbyId:LobbyId, secret:String):Result {
		return Ok;
	}

	@:functionCode('
		char resized[4096];
		strncpy(resized, value, 4096);
		resized[4096 - 1] = \'\\0\';
		return (int)core->internal_->LobbyManager().GetLobbyMetadataValue(lobbyId, key, resized);
	')
	public function getLobbyMetadataValue(lobbyId:LobbyId, key:MetadataKey, value:String):Result {
		return Ok;
	}

	@:functionCode('
		char resized[256];
		strncpy(resized, key, 256);
		resized[256 - 1] = \'\\0\';
		return (int)core->internal_->LobbyManager().GetLobbyMetadataKey(lobbyId, index, resized);
	')
	public function getLobbyMetadataKey(lobbyId:LobbyId, index:Int32, key:String):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().LobbyMetadataCount(lobbyId, &count);')
	public function lobbyMetadataCount(lobbyId:LobbyId, count:Int32):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().MemberCount(lobbyId, &count);')
	public function memberCount(lobbyId:LobbyId, count:Int32):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().GetMemberUserId(lobbyId, index, &userId);')
	public function getMemberUserId(lobbyId:LobbyId, index:Int32, userId:UserId):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().GetMemberUser(lobbyId, userId, &user->internal_);')
	public function getMemberUser(lobbyId:LobbyId, userId:UserId, user:User):Result {
		return Ok;
	}

	@:functionCode('
		char resized[4096];
		strncpy(resized, value, 4096);
		resized[4096 - 1] = \'\\0\';
		return (int)core->internal_->LobbyManager().GetMemberMetadataValue(lobbyId, userId, key, resized);
	')
	public function getMemberMetadataValue(lobbyId:LobbyId, userId:UserId, key:MetadataKey, value:String):Result {
		return Ok;
	}

	@:functionCode('
		char resized[256];
		strncpy(resized, key, 256);
		resized[256 - 1] = \'\\0\';
		return (int)core->internal_->LobbyManager().GetMemberMetadataKey(lobbyId, userId, index, resized);
	')
	public function getMemberMetadataKey(lobbyId:LobbyId, userId:UserId, index:Int32, key:String):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().MemberMetadataCount(lobbyId, userId, &count);')
	public function memberMetadataCount(lobbyId:LobbyId, userId:UserId, count:Int32):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->LobbyManager().UpdateMember(lobbyId, userId, transaction->internal_, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function updateMember(lobbyId:LobbyId, userId:UserId, transaction:LobbyMemberTransaction, callback:Result->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().SendLobbyMessage(lobbyId, &data, dataLength, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function sendLobbyMessage(lobbyId:LobbyId, data:UInt8, dataLength:UInt32, callback:Result->Void) {}

	@:functionCode('core->internal_->LobbyManager().GetSearchQuery(&query->internal_);')
	public function getSearchQuery(query:LobbySearchQuery):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->LobbyManager().Search(query->internal_, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function search(query:LobbySearchQuery, callback:Result->Void) {}

	@:functionCode('core->internal_->LobbyManager().LobbyCount(&count);')
	public function lobbyCount(count:Int32) {}

	@:functionCode('return (int)core->internal_->LobbyManager().GetLobbyId(index, &lobbyId);')
	public function getLobbyId(index:Int32, lobbyId:LobbyId):Result {
		return Ok;
	}

	@:functionCode('
		core->internal_->LobbyManager().ConnectVoice(lobbyId, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function connectVoice(lobbyId:LobbyId, callback:Result->Void) {}

	@:functionCode('
		core->internal_->LobbyManager().DisconnectVoice(lobbyId, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function disconnectVoice(lobbyId:LobbyId, callback:Result->Void) {}

	@:functionCode('return (int)core->internal_->LobbyManager().ConnectNetwork(lobbyId);')
	public function connectNetwork(lobbyId:LobbyId):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().DisconnectNetwork(lobbyId);')
	public function disconnectNetwork(lobbyId:LobbyId):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().FlushNetwork();')
	public function flushNetwork():Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().OpenNetworkChannel(lobbyId, channelId, reliable);')
	public function openNetworkChannel(lobbyId:LobbyId, channelId:UInt8, reliable:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->LobbyManager().SendNetworkMessage(lobbyId, userId, channelId, &data, dataLength);')
	public function sendNetworkMessage(lobbyId:LobbyId, userId:UserId, channelId:UInt8, data:UInt8, dataLength:UInt32):Result {
		return Ok;
	}

	// events
}