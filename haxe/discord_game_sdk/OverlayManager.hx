package discord_game_sdk;

import cpp.UInt32;
import cpp.Int32;
import cpp.UInt8;
import discord_game_sdk.Types;

class OverlayManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('core->internal_->OverlayManager().IsEnabled(&enabled);')
	public function isEnabled(enabled:Bool) {}

	@:functionCode('core->internal_->OverlayManager().IsLocked(&locked);')
	public function isLocked(locked:Bool) {}

	@:functionCode('
		core->internal_->OverlayManager().SetLocked(locked, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function setLocked(locked:Bool, callback:Result->Void) {}

	@:functionCode('
		core->internal_->OverlayManager().OpenActivityInvite((discord::ActivityActionType)type, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function openActivityInvite(type:ActivityActionType, callback:Result->Void) {}

	@:functionCode('
		core->internal_->OverlayManager().OpenGuildInvite(code, [callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function openGuildInvite(code:String, callback:Result->Void) {}

	@:functionCode('
		core->internal_->OverlayManager().OpenVoiceSettings([callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});
	')
	public function openVoiceSettings(callback:Result->Void) {}

	// initDrawingDxgi

	@:functionCode('core->internal_->OverlayManager().OnPresent();')
	public function onPresent() {}

	// forwardMessage

	@:functionCode('core->internal_->OverlayManager().KeyEvent(down, keyCode, (discord::KeyVariant)variant);')
	public function keyEvent(down:Bool, keyCode:String, variant:KeyVariant) {}

	@:functionCode('core->internal_->OverlayManager().CharEvent(character);')
	public function charEvent(character:String) {}

	@:functionCode('core->internal_->OverlayManager().MouseButtonEvent(down, clickCount, (discord::MouseButton)which, x, y);')
	public function mouseButtonEvent(down:UInt8, clickCount:Int32, which:MouseButton, x:Int32, y:Int32) {}

	@:functionCode('core->internal_->OverlayManager().MouseMotionEvent(x, y);')
	public function mouseMotionEvent(x:Int32, y:Int32) {}

	@:functionCode('core->internal_->OverlayManager().ImeCommitText(text);')
	public function imeCommitText(text:String) {}

	@:functionCode('core->internal_->OverlayManager().ImeSetComposition(text, &underlines->internal_, underlinesLength, from, to);')
	public function imeSetComposition(text:String, underlines:ImeUnderline, underlinesLength:UInt32, from:Int32, to:Int32) {}

	@:functionCode('core->internal_->OverlayManager().ImeCancelComposition();')
	public function imeCancelComposition() {}

	@:functionCode('
		core->internal_->OverlayManager().SetImeCompositionRangeCallback([onImeCompositionRangeChanged = std::move(onImeCompositionRangeChanged)](int32_t v1, int32_t v2, discord::Rect* v3, uint32_t v4) {
			discord_game_sdk::Rect haxed{};
			haxed->internal_ = *v3;
			const_cast<Dynamic&>(onImeCompositionRangeChanged)(v1, v2, haxed, v4);
		});
	')
	public function setImeCompositionRangeCallback(onImeCompositionRangeChanged:Int32->Int32->Rect->UInt32->Void) {}

	@:functionCode('
		core->internal_->OverlayManager().SetImeSelectionBoundsCallback([onImeSelectionBoundsChanged = std::move(onImeSelectionBoundsChanged)](discord::Rect v1, discord::Rect v2, bool v3) {
			discord_game_sdk::Rect haxed1{};
			haxed1->internal_ = v1;
			discord_game_sdk::Rect haxed2{};
			haxed2->internal_ = v2;
			const_cast<Dynamic&>(onImeSelectionBoundsChanged)(haxed1, haxed2, v3);
		});
	')
	public function setImeSelectionBoundsCallback(onImeSelectionBoundsChanged:Rect->Rect->Bool->Void) {}

	@:functionCode('return core->internal_->OverlayManager().IsPointInsideClickZone(x, y);')
	public function isPointInsideClickZone(x:Int32, y:Int32):Bool {
		return false;
	}

	// events
}