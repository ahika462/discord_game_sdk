package discord_game_sdk;

typedef Token = Int;

class Event<T> {
	public function new(connect:T->Token, disconnect:Token->Void, disconnectAll:Void->Void) {
		connect_ = connect;
		disconnect_ = disconnect;
		disconnectAll_ = disconnectAll;
	}

	var connect_:T->Token;
	var disconnect_:Token->Void;
	var disconnectAll_:Void->Void;

	public function connect(slot:T):Token {
		return connect_(slot);
	}

	public function disconnect(token:Token) {
		disconnect_(token);
	}

	public function disconnectAll() {
		disconnectAll_();
	}
}