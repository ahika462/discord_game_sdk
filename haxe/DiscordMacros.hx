import haxe.macro.Compiler;
import haxe.macro.Type;
import haxe.macro.Context;
import haxe.macro.Expr;

class DiscordMacros {
	static inline var ffiPath:String = './ffi.h';
	public static macro function native(name:String, ?includes:Array<String>):Array<Field> {
		includes = includes ?? [];

		var currentPos:Position = Context.currentPos();
		var localClass:Ref<ClassType> = Context.getLocalClass();

		localClass.get().meta.add(':include', [{
			expr: EConst(CString(ffiPath)),
			pos: currentPos
		}], currentPos);
		localClass.get().meta.add(':native', [{
			expr: EConst(CString(name)),
			pos: currentPos
		}], currentPos);
		for (include in includes)
			localClass.get().meta.add(':include', [{
				expr: EConst(CString(include)),
				pos: currentPos
			}], currentPos);

		return Context.getBuildFields();
	}

	public static macro function include(?includes:Array<String>):Array<Field> {
		if (includes != null) {
			if (!includes.contains(ffiPath))
				includes.insert(0, ffiPath);
		} else
			includes = [ffiPath];

		var currentPos:Position = Context.currentPos();
		var localClass:Ref<ClassType> = Context.getLocalClass();

		for (include in includes)
			localClass.get().meta.add(':include', [{
				expr: EConst(CString(include)),
				pos: currentPos
			}], currentPos);

		return Context.getBuildFields();
	}

	/*public static macro function defines():Array<Field> {
		Compiler.define('DISCORD_VERSION', '3');
		Compiler.define('DISCORD_ACTIVITY_MANAGER_VERSION', '1');

		return Context.getBuildFields();
	}*/
}