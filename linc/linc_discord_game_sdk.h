#include <hxcpp.h>
#include "../lib/cpp/discord.h"

namespace linc {
	namespace discord_game_sdk {
		extern int create(int64_t clientID, uint64_t flags);
		extern int run_callbacks();

		extern int register_command(const char* command);
		extern int register_steam(uint32_t steamID);
		extern void update_activity(int type, int64_t applicationID,
		const char* name, const char* state, const char* details,
		int64_t startTimestamp, int64_t endTimestamp,
		const char* largeImage, const char* largeText, const char* smallImage, const char* smallText,
		const char* partyID, int32_t partySize, int32_t partyMax,
		const char* matchSecret, const char* joinSecret, const char* spectateSecret,
		bool instance,
		Dynamic& callback);
		extern void clear_activity(Dynamic& callback);
		extern void send_request_reply(int64_t userID, int reply, Dynamic& callback);
		extern void send_invite(int64_t userID, int type, const char* content, Dynamic& callback);
		extern void accept_invite(int64_t userID, Dynamic& callback);
		extern void on_activity_join(Dynamic& callback);
		extern void on_activity_spectate(Dynamic& callback);
		extern void on_activity_join_request(Dynamic& callback);
		extern void on_activity_invite(Dynamic& callback);
	}
}