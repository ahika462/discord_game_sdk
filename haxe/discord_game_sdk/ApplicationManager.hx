package discord_game_sdk;

import discord_game_sdk.Types.OAuth2Token;
import discord_game_sdk.Types.Result;

class ApplicationManager {
	var core:Core;

	@:allow(discord_game_sdk)
	function new(core:Core) {
		this.core = core;
	}

	@:functionCode('
		core->internal_->ApplicationManager().ValidateOrExit([callback = std::move(callback)](discord::Result r) {
			const_cast<Dynamic&>(callback)((int)r);
		});')
	public function validateOrExit(callback:Result->Void) {}

	@:functionCode('
		char chars[128];
		core->internal_->ApplicationManager().GetCurrentLocale(chars);

		const char* locale = "";
		for (int i; i <= 128 - 1; i++)
			locale += chars[i];

		return locale;
	')
	public function getCurrentLocale():String {
		return '';
	}

	@:functionCode('
		char chars[4096];
		core->internal_->ApplicationManager().GetCurrentBranch(chars);

		const char* branch = "";
		for (int i; i<= 4096 - 1; i++)
			branch += chars[i];

		return branch;
	')
	public function getCurrentBranch():String {
		return '';
	}

	@:functionCode('
		core->internal_->ApplicationManager().GetOAuth2Token([callback = std::move(callback)](discord::Result r, discord::OAuth2Token token) {
			discord_game_sdk::OAuth2Token haxed{};
			haxed->internal_ = token;
			const_cast<Dynamic&>(callback)((int)r, haxed);
		});
	')
	public function getOAuth2Token(callback:Result->OAuth2Token->Void) {}

	@:functionCode('
		core->internal_->ApplicationManager().GetTicket([callback = std::move(callback)](discord::Result r, const char* ticket) {
			const_cast<Dynamic&>(callback)((int)r, ticket);
		});
	')
	public function getTicket(callback:Result->String->Void) {}
}