package discord_game_sdk;

import cpp.UInt32;
import cpp.UInt8;
import discord_game_sdk.Types;

class NetworkManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('core->internal_->NetworkManager().GetPeerId(&peerId);')
	public function getPeerId(peerId:NetworkPeerId) {}

	@:functionCode('return (int)core->internal_->NetworkManager().Flush();')
	public function flush():Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->NetworkManager().OpenPeer(peerId, routeData);')
	public function openPeer(peerId:NetworkPeerId, routeData:String):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->NetworkManager().UpdatePeer(peerId, routeData);')
	public function updatePeer(peerId:NetworkPeerId, routeData:String):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->NetworkManager().ClosePeer(peerId);')
	public function closePeer(peerId:NetworkPeerId):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->NetworkManager().OpenChannel(peerId, channelId, reliable);')
	public function openChannel(peerId:NetworkPeerId, channelId:NetworkChannelId, reliable:Bool):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->NetworkManager().CloseChannel(peerId, channelId);')
	public function closeChannel(peerId:NetworkPeerId, channelId:NetworkChannelId):Result {
		return Ok;
	}

	@:functionCode('return (int)core->internal_->NetworkManager().SendMessage(peerId, channelId, &data, dataLength);')
	public function sendMessage(peerId:NetworkPeerId, channelId:NetworkChannelId, data:UInt8, dataLength:UInt32):Result {
		return Ok;
	}

	// events
}