package discord_game_sdk;

/**
 * Bindings for fast using discord game sdk.
 */

@:keep
@:build(discord_game_sdk.linc.Linc.touch())
@:build(discord_game_sdk.linc.Linc.xml('discord_game_sdk'))

class DiscordGameSDK {}