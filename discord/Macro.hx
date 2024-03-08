package discord;

#if macro
import sys.io.File;
import sys.FileSystem;
import haxe.io.Path;
#end
import haxe.macro.Context;
import haxe.macro.Expr;

using haxe.macro.PositionTools;

/**
 * DON'T USE THIS
 */
class Macro {
	inline static var dllName:String = 'discord_game_sdk.dll';
	inline static var libName:String = 'discord_game_sdk';

	public static macro function copyDll(output:String):Array<Field> {
		#if !lime
		var currentPos:Position =  Context.currentPos();
		var posInfos:{min:Int, max:Int, file:String} = currentPos.getInfos();

		var sourcePath:String = Path.directory(posInfos.file);
		if (!Path.isAbsolute(sourcePath))
			sourcePath = Path.join([Sys.getCwd(), sourcePath]);
		sourcePath = Path.normalize(sourcePath);

		var dllDirectory:String = #if HXCPP_M64 'x86_64' #else 'x86' #end;
		var dllPath:String = Path.normalize(Path.join([sourcePath, 'lib/lib', dllDirectory, dllName]));

		if (!FileSystem.exists(output))
			FileSystem.createDirectory(output);
		File.copy(dllPath, Path.normalize(Path.join([output, dllName])));
		#end

		return Context.getBuildFields();
	}
}