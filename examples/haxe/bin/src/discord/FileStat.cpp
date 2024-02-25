// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
#ifndef INCLUDED_discord_FileStat
#include <discord/FileStat.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1019_new,"discord.FileStat","new",0x863ae984,"discord.FileStat.new","discord/Types.hx",1019,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1028_get_filename,"discord.FileStat","get_filename",0x81ea852c,"discord.FileStat.get_filename","discord/Types.hx",1028,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1034_set_filename,"discord.FileStat","set_filename",0x96e3a8a0,"discord.FileStat.set_filename","discord/Types.hx",1034,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1040_get_size,"discord.FileStat","get_size",0xd1a5a0a6,"discord.FileStat.get_size","discord/Types.hx",1040,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1044_set_size,"discord.FileStat","set_size",0x8002fa1a,"discord.FileStat.set_size","discord/Types.hx",1044,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1050_get_lastModified,"discord.FileStat","get_lastModified",0x6035d4a4,"discord.FileStat.get_lastModified","discord/Types.hx",1050,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_2d17b4fae04d0d03_1054_set_lastModified,"discord.FileStat","set_lastModified",0xb677c218,"discord.FileStat.set_lastModified","discord/Types.hx",1054,0xbb915808)
namespace discord{

void FileStat_obj::__construct(::String filename, ::Dynamic size, ::Dynamic lastModified){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1019_new)
HXLINE(1020)		::String tmp = filename;
HXDLIN(1020)		::String _hx_tmp;
HXDLIN(1020)		if (::hx::IsNotNull( tmp )) {
HXLINE(1020)			_hx_tmp = tmp;
            		}
            		else {
HXLINE(1020)			_hx_tmp = HX_("",00,00,00,00);
            		}
HXDLIN(1020)		this->set_filename(_hx_tmp);
HXLINE(1021)		 ::Dynamic tmp1 = size;
HXDLIN(1021)		::cpp::UInt64 _hx_tmp1;
HXDLIN(1021)		if (::hx::IsNotNull( tmp1 )) {
HXLINE(1021)			_hx_tmp1 = ( (::cpp::UInt64)(tmp1) );
            		}
            		else {
HXLINE(1021)			_hx_tmp1 = ( (::cpp::UInt64)(0) );
            		}
HXDLIN(1021)		this->set_size(_hx_tmp1);
HXLINE(1022)		 ::Dynamic tmp2 = lastModified;
HXDLIN(1022)		::cpp::UInt64 _hx_tmp2;
HXDLIN(1022)		if (::hx::IsNotNull( tmp2 )) {
HXLINE(1022)			_hx_tmp2 = ( (::cpp::UInt64)(tmp2) );
            		}
            		else {
HXLINE(1022)			_hx_tmp2 = ( (::cpp::UInt64)(0) );
            		}
HXDLIN(1022)		this->set_lastModified(_hx_tmp2);
            	}

Dynamic FileStat_obj::__CreateEmpty() { return new FileStat_obj; }

void *FileStat_obj::_hx_vtable = 0;

Dynamic FileStat_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< FileStat_obj > _hx_result = new FileStat_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2]);
	return _hx_result;
}

bool FileStat_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x7ff9f920;
}

::String FileStat_obj::get_filename(){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1028_get_filename)
            	return internal_.filename;

HXDLIN(1028)		return HX_("",00,00,00,00);
            	}


HX_DEFINE_DYNAMIC_FUNC0(FileStat_obj,get_filename,return )

::String FileStat_obj::set_filename(::String v){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1034_set_filename)
            	strncpy(internal_.filename, v, 260);
					internal_.filename[260 - 1] = '\0';
					return internal_.filename;

HXDLIN(1034)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(FileStat_obj,set_filename,return )

::cpp::UInt64 FileStat_obj::get_size(){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1040_get_size)
            	return internal_.size;

HXDLIN(1040)		return ( (::cpp::UInt64)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(FileStat_obj,get_size,return )

::cpp::UInt64 FileStat_obj::set_size(::cpp::UInt64 v){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1044_set_size)
            	internal_.size = v;

HXDLIN(1044)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(FileStat_obj,set_size,return )

::cpp::UInt64 FileStat_obj::get_lastModified(){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1050_get_lastModified)
            	return internal_.last_modified;

HXDLIN(1050)		return ( (::cpp::UInt64)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(FileStat_obj,get_lastModified,return )

::cpp::UInt64 FileStat_obj::set_lastModified(::cpp::UInt64 v){
            	HX_STACKFRAME(&_hx_pos_2d17b4fae04d0d03_1054_set_lastModified)
            	internal_.last_modified = v;

HXDLIN(1054)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(FileStat_obj,set_lastModified,return )


FileStat_obj::FileStat_obj()
{
}

void FileStat_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(FileStat);
	HX_MARK_MEMBER_NAME(internal_,"internal_");
	HX_MARK_END_CLASS();
}

void FileStat_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(internal_,"internal_");
}

::hx::Val FileStat_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"size") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_size() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"filename") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_filename() ); }
		if (HX_FIELD_EQ(inName,"get_size") ) { return ::hx::Val( get_size_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_size") ) { return ::hx::Val( set_size_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { return ::hx::Val( cpp::Struct<  DiscordFileStat >( internal_ ) ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"get_filename") ) { return ::hx::Val( get_filename_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_filename") ) { return ::hx::Val( set_filename_dyn() ); }
		if (HX_FIELD_EQ(inName,"lastModified") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_lastModified() ); }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"get_lastModified") ) { return ::hx::Val( get_lastModified_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_lastModified") ) { return ::hx::Val( set_lastModified_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val FileStat_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"size") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_size(inValue.Cast< ::cpp::UInt64 >()) ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"filename") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_filename(inValue.Cast< ::String >()) ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { internal_=inValue.Cast< cpp::Struct<  DiscordFileStat >  >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"lastModified") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_lastModified(inValue.Cast< ::cpp::UInt64 >()) ); }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void FileStat_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("internal_",82,ee,23,3f));
	outFields->push(HX_("filename",c7,2e,6a,77));
	outFields->push(HX_("size",c1,a0,53,4c));
	outFields->push(HX_("lastModified",bf,e7,59,78));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo FileStat_obj_sMemberStorageInfo[] = {
	{::hx::fsUnknown /*  DiscordFileStat */ ,(int)offsetof(FileStat_obj,internal_),HX_("internal_",82,ee,23,3f)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *FileStat_obj_sStaticStorageInfo = 0;
#endif

static ::String FileStat_obj_sMemberFields[] = {
	HX_("internal_",82,ee,23,3f),
	HX_("get_filename",d0,e2,83,2c),
	HX_("set_filename",44,06,7d,41),
	HX_("get_size",4a,5c,0e,cc),
	HX_("set_size",be,b5,6b,7a),
	HX_("get_lastModified",48,d4,f8,7c),
	HX_("set_lastModified",bc,c1,3a,d3),
	::String(null()) };

::hx::Class FileStat_obj::__mClass;

void FileStat_obj::__register()
{
	FileStat_obj _hx_dummy;
	FileStat_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("discord.FileStat",92,17,27,80);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(FileStat_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< FileStat_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = FileStat_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = FileStat_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace discord