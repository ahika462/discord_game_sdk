import haxe.io.Path;
import haxe.macro.Type;
import haxe.macro.Context;
import haxe.macro.Expr;

using haxe.macro.PositionTools;

class DiscordMacros {
	static inline var ffiPath:String = './ffi.h';
	static inline var libPath:String = '../../';

	public static macro function load():Array<Field> {
		var currentPos:Position = Context.currentPos();
		var localClass:Ref<ClassType> = Context.getLocalClass();

		var sdkPath:String = Path.directory(currentPos.getInfos().file);
		if( !Path.isAbsolute(sdkPath) ) {
			sdkPath = Path.join([Sys.getCwd(), sdkPath]);
		}
		sdkPath = Path.normalize(Path.join([sdkPath, libPath]));

		localClass.get().meta.add(':buildXml', [{
			expr: EConst(CString('
				<set name="DISCORD_GAME_SDK_PATH" value="$sdkPath/"/>
				<target id="haxe">
					<section if="windows">
						<libpathflag value="-L$${DISCORD_GAME_SDK_PATH}lib/"/>
						<section if="HXCPP_M32">
							<lib name="$${DISCORD_GAME_SDK_PATH}lib/x86/discord_game_sdk.dll.lib"/>
						</section>
						<section if="HXCPP_M64">
							<lib name="$${DISCORD_GAME_SDK_PATH}lib/x86_64/discord_game_sdk.dll.lib"/>
						</section>
					</section>
				</target>
			')),
			pos: currentPos
		}], currentPos);

		return Context.getBuildFields();
	}

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