package cpp;

import cpp.Char;

class CharTools {
	@:functionCode('char arr[size];
					strncpy(arr, str, 256);
					arr[256 - 1] = "\\0";
					return arr;')
	public static function toCharArray(str:String, size:Int):Array<Char> {
		return [];
	}

	@:functionCode('const char* str;
					str = arr;
					return str;')
	public static function toString(arr:Array<Char>):String {
		return '';
	}
}