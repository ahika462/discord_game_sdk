// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
#ifndef INCLUDED_discord_ImeUnderline
#include <discord/ImeUnderline.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_548ca7b3597f6f87_904_new,"discord.ImeUnderline","new",0x259a805f,"discord.ImeUnderline.new","discord/Types.hx",904,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_915_get_from,"discord.ImeUnderline","get_from",0x299d5494,"discord.ImeUnderline.get_from","discord/Types.hx",915,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_919_set_from,"discord.ImeUnderline","set_from",0xd7faae08,"discord.ImeUnderline.set_from","discord/Types.hx",919,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_925_get_to,"discord.ImeUnderline","get_to",0xe28e1625,"discord.ImeUnderline.get_to","discord/Types.hx",925,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_929_set_to,"discord.ImeUnderline","set_to",0xaed66a99,"discord.ImeUnderline.set_to","discord/Types.hx",929,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_935_get_color,"discord.ImeUnderline","get_color",0x83db06f9,"discord.ImeUnderline.get_color","discord/Types.hx",935,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_939_set_color,"discord.ImeUnderline","set_color",0x672bf305,"discord.ImeUnderline.set_color","discord/Types.hx",939,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_945_get_backgroundColor,"discord.ImeUnderline","get_backgroundColor",0x4704fbab,"discord.ImeUnderline.get_backgroundColor","discord/Types.hx",945,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_949_set_backgroundColor,"discord.ImeUnderline","set_backgroundColor",0x83a1eeb7,"discord.ImeUnderline.set_backgroundColor","discord/Types.hx",949,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_955_get_thick,"discord.ImeUnderline","get_thick",0x490813f3,"discord.ImeUnderline.get_thick","discord/Types.hx",955,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_548ca7b3597f6f87_959_set_thick,"discord.ImeUnderline","set_thick",0x2c58ffff,"discord.ImeUnderline.set_thick","discord/Types.hx",959,0xbb915808)
namespace discord{

void ImeUnderline_obj::__construct( ::Dynamic from, ::Dynamic to, ::Dynamic color, ::Dynamic backgroundColor, ::Dynamic thick){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_904_new)
HXLINE( 905)		 ::Dynamic tmp = from;
HXDLIN( 905)		int _hx_tmp;
HXDLIN( 905)		if (::hx::IsNotNull( tmp )) {
HXLINE( 905)			_hx_tmp = ( (int)(tmp) );
            		}
            		else {
HXLINE( 905)			_hx_tmp = 0;
            		}
HXDLIN( 905)		this->set_from(_hx_tmp);
HXLINE( 906)		 ::Dynamic tmp1 = to;
HXDLIN( 906)		int _hx_tmp1;
HXDLIN( 906)		if (::hx::IsNotNull( tmp1 )) {
HXLINE( 906)			_hx_tmp1 = ( (int)(tmp1) );
            		}
            		else {
HXLINE( 906)			_hx_tmp1 = 0;
            		}
HXDLIN( 906)		this->set_to(_hx_tmp1);
HXLINE( 907)		 ::Dynamic tmp2 = color;
HXDLIN( 907)		unsigned int _hx_tmp2;
HXDLIN( 907)		if (::hx::IsNotNull( tmp2 )) {
HXLINE( 907)			_hx_tmp2 = ( (unsigned int)(tmp2) );
            		}
            		else {
HXLINE( 907)			_hx_tmp2 = ( (unsigned int)(0) );
            		}
HXDLIN( 907)		this->set_color(_hx_tmp2);
HXLINE( 908)		 ::Dynamic tmp3 = backgroundColor;
HXDLIN( 908)		unsigned int _hx_tmp3;
HXDLIN( 908)		if (::hx::IsNotNull( tmp3 )) {
HXLINE( 908)			_hx_tmp3 = ( (unsigned int)(tmp3) );
            		}
            		else {
HXLINE( 908)			_hx_tmp3 = ( (unsigned int)(0) );
            		}
HXDLIN( 908)		this->set_backgroundColor(_hx_tmp3);
HXLINE( 909)		 ::Dynamic tmp4 = thick;
HXDLIN( 909)		bool _hx_tmp4;
HXDLIN( 909)		if (::hx::IsNotNull( tmp4 )) {
HXLINE( 909)			_hx_tmp4 = ( (bool)(tmp4) );
            		}
            		else {
HXLINE( 909)			_hx_tmp4 = false;
            		}
HXDLIN( 909)		this->set_thick(_hx_tmp4);
            	}

Dynamic ImeUnderline_obj::__CreateEmpty() { return new ImeUnderline_obj; }

void *ImeUnderline_obj::_hx_vtable = 0;

Dynamic ImeUnderline_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< ImeUnderline_obj > _hx_result = new ImeUnderline_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3],inArgs[4]);
	return _hx_result;
}

bool ImeUnderline_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x1833bbcf;
}

int ImeUnderline_obj::get_from(){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_915_get_from)
            	return internal_.from;

HXDLIN( 915)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(ImeUnderline_obj,get_from,return )

int ImeUnderline_obj::set_from(int v){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_919_set_from)
            	internal_.from = v;

HXDLIN( 919)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(ImeUnderline_obj,set_from,return )

int ImeUnderline_obj::get_to(){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_925_get_to)
            	return internal_.to;

HXDLIN( 925)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(ImeUnderline_obj,get_to,return )

int ImeUnderline_obj::set_to(int v){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_929_set_to)
            	internal_.to = v;

HXDLIN( 929)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(ImeUnderline_obj,set_to,return )

unsigned int ImeUnderline_obj::get_color(){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_935_get_color)
            	return internal_.color;

HXDLIN( 935)		return ( (unsigned int)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(ImeUnderline_obj,get_color,return )

unsigned int ImeUnderline_obj::set_color(unsigned int v){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_939_set_color)
            	internal_.color = v;

HXDLIN( 939)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(ImeUnderline_obj,set_color,return )

unsigned int ImeUnderline_obj::get_backgroundColor(){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_945_get_backgroundColor)
            	return internal_.background_color;

HXDLIN( 945)		return ( (unsigned int)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(ImeUnderline_obj,get_backgroundColor,return )

unsigned int ImeUnderline_obj::set_backgroundColor(unsigned int v){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_949_set_backgroundColor)
            	internal_.background_color = v;

HXDLIN( 949)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(ImeUnderline_obj,set_backgroundColor,return )

bool ImeUnderline_obj::get_thick(){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_955_get_thick)
            	return internal_.thick;

HXDLIN( 955)		return false;
            	}


HX_DEFINE_DYNAMIC_FUNC0(ImeUnderline_obj,get_thick,return )

bool ImeUnderline_obj::set_thick(bool v){
            	HX_STACKFRAME(&_hx_pos_548ca7b3597f6f87_959_set_thick)
            	internal_.thick = v;

HXDLIN( 959)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(ImeUnderline_obj,set_thick,return )


ImeUnderline_obj::ImeUnderline_obj()
{
}

void ImeUnderline_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(ImeUnderline);
	HX_MARK_MEMBER_NAME(internal_,"internal_");
	HX_MARK_END_CLASS();
}

void ImeUnderline_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(internal_,"internal_");
}

::hx::Val ImeUnderline_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 2:
		if (HX_FIELD_EQ(inName,"to") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_to() ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"from") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_from() ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"color") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_color() ); }
		if (HX_FIELD_EQ(inName,"thick") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_thick() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"get_to") ) { return ::hx::Val( get_to_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_to") ) { return ::hx::Val( set_to_dyn() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"get_from") ) { return ::hx::Val( get_from_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_from") ) { return ::hx::Val( set_from_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { return ::hx::Val( cpp::Struct<  DiscordImeUnderline >( internal_ ) ); }
		if (HX_FIELD_EQ(inName,"get_color") ) { return ::hx::Val( get_color_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_color") ) { return ::hx::Val( set_color_dyn() ); }
		if (HX_FIELD_EQ(inName,"get_thick") ) { return ::hx::Val( get_thick_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_thick") ) { return ::hx::Val( set_thick_dyn() ); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"backgroundColor") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_backgroundColor() ); }
		break;
	case 19:
		if (HX_FIELD_EQ(inName,"get_backgroundColor") ) { return ::hx::Val( get_backgroundColor_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_backgroundColor") ) { return ::hx::Val( set_backgroundColor_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val ImeUnderline_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 2:
		if (HX_FIELD_EQ(inName,"to") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_to(inValue.Cast< int >()) ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"from") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_from(inValue.Cast< int >()) ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"color") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_color(inValue.Cast< unsigned int >()) ); }
		if (HX_FIELD_EQ(inName,"thick") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_thick(inValue.Cast< bool >()) ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { internal_=inValue.Cast< cpp::Struct<  DiscordImeUnderline >  >(); return inValue; }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"backgroundColor") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_backgroundColor(inValue.Cast< unsigned int >()) ); }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void ImeUnderline_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("internal_",82,ee,23,3f));
	outFields->push(HX_("from",6a,a5,c2,43));
	outFields->push(HX_("to",7b,65,00,00));
	outFields->push(HX_("color",63,71,5c,4a));
	outFields->push(HX_("backgroundColor",95,4e,47,0d));
	outFields->push(HX_("thick",5d,7e,89,0f));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo ImeUnderline_obj_sMemberStorageInfo[] = {
	{::hx::fsUnknown /*  DiscordImeUnderline */ ,(int)offsetof(ImeUnderline_obj,internal_),HX_("internal_",82,ee,23,3f)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *ImeUnderline_obj_sStaticStorageInfo = 0;
#endif

static ::String ImeUnderline_obj_sMemberFields[] = {
	HX_("internal_",82,ee,23,3f),
	HX_("get_from",f3,60,7d,c3),
	HX_("set_from",67,ba,da,71),
	HX_("get_to",c4,fc,2f,a3),
	HX_("set_to",38,51,78,6f),
	HX_("get_color",ba,cd,05,8e),
	HX_("set_color",c6,b9,56,71),
	HX_("get_backgroundColor",ac,1d,52,98),
	HX_("set_backgroundColor",b8,10,ef,d4),
	HX_("get_thick",b4,da,32,53),
	HX_("set_thick",c0,c6,83,36),
	::String(null()) };

::hx::Class ImeUnderline_obj::__mClass;

void ImeUnderline_obj::__register()
{
	ImeUnderline_obj _hx_dummy;
	ImeUnderline_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("discord.ImeUnderline",ed,64,65,e8);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(ImeUnderline_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< ImeUnderline_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = ImeUnderline_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = ImeUnderline_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace discord