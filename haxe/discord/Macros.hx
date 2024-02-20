package discord;

import haxe.macro.Type;
import haxe.macro.Context;
import haxe.macro.Expr;

class Macros {
	static inline var ffiPath:String = './ffi.h';
	public static macro function native(name:String):Array<Field> {
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

		return Context.getBuildFields();
	}
}