package discord_game_sdk;

import haxe.macro.Context;
import haxe.macro.Expr;

using haxe.macro.Tools;

class Macros {
	public static macro function buildArray(typePath:String, ?exclude:Array<String> = null):Expr {
		var type = Context.getType(typePath);
		var values = [];

		if (exclude == null)
			exclude = [];

		switch(type.follow()) {
			case TAbstract(_.get() => ab, _):
				for (f in ab.impl.get().statics.get()) {
					if (!exclude.contains(f.name))
						values.push(f.name);
				}

			default:
		}

		return macro $v{values};
	}
}