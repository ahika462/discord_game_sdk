import discord.FFI.IDiscordLobbySearchQuery;
import discord.FFI.DiscordUser;

@:include('./haxe/discord/ffi.h')
class Test {
	static var user:DiscordUser;
	static var query:IDiscordLobbySearchQuery;

	static function main() {
		makeUser();
		user.id = 10;
		trace(user.id);

		trace(query.filter(cpp.RawPointer.addressOf(query), [], DiscordLobbySearchComparison_Equal, DiscordLobbySearchCast_String, []));

		var c:Int = 0;
		while (true)
			c++;
	}
	
	@:functionCode('user = DiscordUser();')
	static function makeUser() {}
}