// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
#ifndef INCLUDED_discord_Rect
#include <discord/Rect.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_b56313d94c554d42_967_new,"discord.Rect","new",0x79819b38,"discord.Rect.new","discord/Types.hx",967,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_977_get_left,"discord.Rect","get_left",0x5f16a9b8,"discord.Rect.get_left","discord/Types.hx",977,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_981_set_left,"discord.Rect","set_left",0x0d74032c,"discord.Rect.set_left","discord/Types.hx",981,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_987_get_top,"discord.Rect","get_top",0x8a354604,"discord.Rect.get_top","discord/Types.hx",987,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_991_set_top,"discord.Rect","set_top",0x7d36d710,"discord.Rect.set_top","discord/Types.hx",991,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_997_get_right,"discord.Rect","get_right",0x4bcae50b,"discord.Rect.get_right","discord/Types.hx",997,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_1001_set_right,"discord.Rect","set_right",0x2f1bd117,"discord.Rect.set_right","discord/Types.hx",1001,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_1007_get_bottom,"discord.Rect","get_bottom",0x1d1016dc,"discord.Rect.get_bottom","discord/Types.hx",1007,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b56313d94c554d42_1011_set_bottom,"discord.Rect","set_bottom",0x208db550,"discord.Rect.set_bottom","discord/Types.hx",1011,0xbb915808)
namespace discord{

void Rect_obj::__construct( ::Dynamic left, ::Dynamic top, ::Dynamic right, ::Dynamic bottom){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_967_new)
HXLINE( 968)		 ::Dynamic tmp = left;
HXDLIN( 968)		int _hx_tmp;
HXDLIN( 968)		if (::hx::IsNotNull( tmp )) {
HXLINE( 968)			_hx_tmp = ( (int)(tmp) );
            		}
            		else {
HXLINE( 968)			_hx_tmp = 0;
            		}
HXDLIN( 968)		this->set_left(_hx_tmp);
HXLINE( 969)		 ::Dynamic tmp1 = top;
HXDLIN( 969)		int _hx_tmp1;
HXDLIN( 969)		if (::hx::IsNotNull( tmp1 )) {
HXLINE( 969)			_hx_tmp1 = ( (int)(tmp1) );
            		}
            		else {
HXLINE( 969)			_hx_tmp1 = 0;
            		}
HXDLIN( 969)		this->set_top(_hx_tmp1);
HXLINE( 970)		 ::Dynamic tmp2 = right;
HXDLIN( 970)		int _hx_tmp2;
HXDLIN( 970)		if (::hx::IsNotNull( tmp2 )) {
HXLINE( 970)			_hx_tmp2 = ( (int)(tmp2) );
            		}
            		else {
HXLINE( 970)			_hx_tmp2 = 0;
            		}
HXDLIN( 970)		this->set_right(_hx_tmp2);
HXLINE( 971)		 ::Dynamic tmp3 = bottom;
HXDLIN( 971)		int _hx_tmp3;
HXDLIN( 971)		if (::hx::IsNotNull( tmp3 )) {
HXLINE( 971)			_hx_tmp3 = ( (int)(tmp3) );
            		}
            		else {
HXLINE( 971)			_hx_tmp3 = 0;
            		}
HXDLIN( 971)		this->set_bottom(_hx_tmp3);
            	}

Dynamic Rect_obj::__CreateEmpty() { return new Rect_obj; }

void *Rect_obj::_hx_vtable = 0;

Dynamic Rect_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< Rect_obj > _hx_result = new Rect_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3]);
	return _hx_result;
}

bool Rect_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x4da963f0;
}

int Rect_obj::get_left(){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_977_get_left)
            	return internal_.left;

HXDLIN( 977)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Rect_obj,get_left,return )

int Rect_obj::set_left(int v){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_981_set_left)
            	internal_.left = v;

HXDLIN( 981)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Rect_obj,set_left,return )

int Rect_obj::get_top(){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_987_get_top)
            	return internal_.top;

HXDLIN( 987)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Rect_obj,get_top,return )

int Rect_obj::set_top(int v){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_991_set_top)
            	internal_.top = v;

HXDLIN( 991)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Rect_obj,set_top,return )

int Rect_obj::get_right(){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_997_get_right)
            	return internal_.right;

HXDLIN( 997)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Rect_obj,get_right,return )

int Rect_obj::set_right(int v){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_1001_set_right)
            	internal_.right = v;

HXDLIN(1001)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Rect_obj,set_right,return )

int Rect_obj::get_bottom(){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_1007_get_bottom)
            	return internal_.bottom;

HXDLIN(1007)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Rect_obj,get_bottom,return )

int Rect_obj::set_bottom(int v){
            	HX_STACKFRAME(&_hx_pos_b56313d94c554d42_1011_set_bottom)
            	internal_.bottom = v;

HXDLIN(1011)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Rect_obj,set_bottom,return )


Rect_obj::Rect_obj()
{
}

void Rect_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Rect);
	HX_MARK_MEMBER_NAME(internal_,"internal_");
	HX_MARK_END_CLASS();
}

void Rect_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(internal_,"internal_");
}

::hx::Val Rect_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"top") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_top() ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"left") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_left() ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"right") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_right() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"bottom") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_bottom() ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"get_top") ) { return ::hx::Val( get_top_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_top") ) { return ::hx::Val( set_top_dyn() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"get_left") ) { return ::hx::Val( get_left_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_left") ) { return ::hx::Val( set_left_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { return ::hx::Val( cpp::Struct<  DiscordRect >( internal_ ) ); }
		if (HX_FIELD_EQ(inName,"get_right") ) { return ::hx::Val( get_right_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_right") ) { return ::hx::Val( set_right_dyn() ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"get_bottom") ) { return ::hx::Val( get_bottom_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_bottom") ) { return ::hx::Val( set_bottom_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val Rect_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"top") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_top(inValue.Cast< int >()) ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"left") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_left(inValue.Cast< int >()) ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"right") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_right(inValue.Cast< int >()) ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"bottom") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_bottom(inValue.Cast< int >()) ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { internal_=inValue.Cast< cpp::Struct<  DiscordRect >  >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Rect_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("internal_",82,ee,23,3f));
	outFields->push(HX_("left",07,08,b0,47));
	outFields->push(HX_("top",95,66,58,00));
	outFields->push(HX_("right",dc,0b,64,e9));
	outFields->push(HX_("bottom",eb,e6,78,65));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo Rect_obj_sMemberStorageInfo[] = {
	{::hx::fsUnknown /*  DiscordRect */ ,(int)offsetof(Rect_obj,internal_),HX_("internal_",82,ee,23,3f)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *Rect_obj_sStaticStorageInfo = 0;
#endif

static ::String Rect_obj_sMemberFields[] = {
	HX_("internal_",82,ee,23,3f),
	HX_("get_left",90,c3,6a,c7),
	HX_("set_left",04,1d,c8,75),
	HX_("get_top",2c,2f,cd,26),
	HX_("set_top",38,c0,ce,19),
	HX_("get_right",33,68,0d,2d),
	HX_("set_right",3f,54,5e,10),
	HX_("get_bottom",b4,56,00,56),
	HX_("set_bottom",28,f5,7d,59),
	::String(null()) };

::hx::Class Rect_obj::__mClass;

void Rect_obj::__register()
{
	Rect_obj _hx_dummy;
	Rect_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("discord.Rect",46,df,dd,7e);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(Rect_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< Rect_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Rect_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Rect_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace discord