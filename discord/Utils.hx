package discord;

import discord.Discord;

class Utils {
	static final results:Map<Int, String> = [
		0 => 'Ok',
		1 => 'Service unavailable',
		2 => 'Invalid version',
		3 => 'Lock failed',
		4 => 'Internal error',
		5 => 'Invalid payload',
		6 => 'Invalid command',
		7 => 'Invalid permissions',
		8 => 'Not fetched',
		9 => 'Not found',
		10 => 'Conflict',
		11 => 'Invalid secret',
		12 => 'Invalid join secret',
		13 => 'No eligible activity',
		14 => 'Invalid invite',
		15 => 'Not authenticated',
		16 => 'Invalid access token',
		17 => 'Application mismatch',
		18 => 'Invalid data URL',
		19 => 'Invalid Base64',
		20 => 'Not filtered',
		21 => 'Lobby full',
		22 => 'Invalid lobby secret',
		23 => 'Invalid file name',
		24 => 'Invalid file size',
		25 => 'Invalid entitlement',
		26 => 'Not installed',
		27 => 'Not running',
		28 => 'Insufficient buffer',
		29 => 'Purchase canceled',
		30 => 'Invalid guild',
		31 => 'Invalid event',
		32 => 'Invalid channel',
		33 => 'Invalid origin',
		34 => 'Rate limited',
		35 => 'OAuth2Error',
		36 => 'Select channel timeout',
		37 => 'Get guild timeout',
		38 => 'Select voice force required',
		39 => 'Capture shortcut already listening',
		40 => 'Unauthorized for achievement',
		41 => 'Invalid gift code',
		42 => 'Purchase error',
		43 => 'Transaction aborted'
	];
	public static inline function toResult(i:Int):DiscordResult {
		return switch(i) {
			case 0: Ok;
			// case 26 | 27 | 43: Disconnected(i, results[i]);
			default: Error(i, results[i]);
		}
	}
}