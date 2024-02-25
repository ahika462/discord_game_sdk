// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
#ifndef INCLUDED_discord_Entitlement
#include <discord/Entitlement.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1062_new,"discord.Entitlement","new",0x1954923d,"discord.Entitlement.new","discord/Types.hx",1062,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1071_get_id,"discord.Entitlement","get_id",0x4e71f967,"discord.Entitlement.get_id","discord/Types.hx",1071,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1075_set_id,"discord.Entitlement","set_id",0x1aba4ddb,"discord.Entitlement.set_id","discord/Types.hx",1075,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1081_get_type,"discord.Entitlement","get_type",0x51460b46,"discord.Entitlement.get_type","discord/Types.hx",1081,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1085_set_type,"discord.Entitlement","set_type",0xffa364ba,"discord.Entitlement.set_type","discord/Types.hx",1085,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1091_get_skuID,"discord.Entitlement","get_skuID",0x2f5ff3ec,"discord.Entitlement.get_skuID","discord/Types.hx",1091,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_3dec7e1e2465146e_1095_set_skuID,"discord.Entitlement","set_skuID",0x12b0dff8,"discord.Entitlement.set_skuID","discord/Types.hx",1095,0xbb915808)
namespace discord{

void Entitlement_obj::__construct( ::Dynamic id, ::Dynamic type, ::Dynamic skuID){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1062_new)
HXLINE(1063)		 ::Dynamic tmp = id;
HXDLIN(1063)		::cpp::Int64 _hx_tmp;
HXDLIN(1063)		if (::hx::IsNotNull( tmp )) {
HXLINE(1063)			_hx_tmp = ( (::cpp::Int64)(tmp) );
            		}
            		else {
HXLINE(1063)			_hx_tmp = ( (::cpp::Int64)(0) );
            		}
HXDLIN(1063)		this->set_id(_hx_tmp);
HXLINE(1064)		 ::Dynamic tmp1 = type;
HXDLIN(1064)		int _hx_tmp1;
HXDLIN(1064)		if (::hx::IsNotNull( tmp1 )) {
HXLINE(1064)			_hx_tmp1 = ( (int)(tmp1) );
            		}
            		else {
HXLINE(1064)			_hx_tmp1 = 1;
            		}
HXDLIN(1064)		this->set_type(_hx_tmp1);
HXLINE(1065)		 ::Dynamic tmp2 = skuID;
HXDLIN(1065)		::cpp::Int64 _hx_tmp2;
HXDLIN(1065)		if (::hx::IsNotNull( tmp2 )) {
HXLINE(1065)			_hx_tmp2 = ( (::cpp::Int64)(tmp2) );
            		}
            		else {
HXLINE(1065)			_hx_tmp2 = ( (::cpp::Int64)(0) );
            		}
HXDLIN(1065)		this->set_skuID(_hx_tmp2);
            	}

Dynamic Entitlement_obj::__CreateEmpty() { return new Entitlement_obj; }

void *Entitlement_obj::_hx_vtable = 0;

Dynamic Entitlement_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< Entitlement_obj > _hx_result = new Entitlement_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2]);
	return _hx_result;
}

bool Entitlement_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x052a7461;
}

::cpp::Int64 Entitlement_obj::get_id(){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1071_get_id)
            	return internal_.id;

HXDLIN(1071)		return ( (::cpp::Int64)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(Entitlement_obj,get_id,return )

::cpp::Int64 Entitlement_obj::set_id(::cpp::Int64 v){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1075_set_id)
            	internal_.id = v;

HXDLIN(1075)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Entitlement_obj,set_id,return )

int Entitlement_obj::get_type(){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1081_get_type)
            	return (int)internal_.type;

HXDLIN(1081)		return 1;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Entitlement_obj,get_type,return )

int Entitlement_obj::set_type(int v){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1085_set_type)
            	internal_.type = (EDiscordEntitlementType)v;

HXDLIN(1085)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Entitlement_obj,set_type,return )

::cpp::Int64 Entitlement_obj::get_skuID(){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1091_get_skuID)
            	return internal_.sku_id;

HXDLIN(1091)		return ( (::cpp::Int64)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(Entitlement_obj,get_skuID,return )

::cpp::Int64 Entitlement_obj::set_skuID(::cpp::Int64 v){
            	HX_STACKFRAME(&_hx_pos_3dec7e1e2465146e_1095_set_skuID)
            	internal_.sku_id = v;

HXDLIN(1095)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Entitlement_obj,set_skuID,return )


Entitlement_obj::Entitlement_obj()
{
}

void Entitlement_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Entitlement);
	HX_MARK_MEMBER_NAME(internal_,"internal_");
	HX_MARK_END_CLASS();
}

void Entitlement_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(internal_,"internal_");
}

::hx::Val Entitlement_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 2:
		if (HX_FIELD_EQ(inName,"id") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_id() ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"type") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_type() ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"skuID") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_skuID() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"get_id") ) { return ::hx::Val( get_id_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_id") ) { return ::hx::Val( set_id_dyn() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"get_type") ) { return ::hx::Val( get_type_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_type") ) { return ::hx::Val( set_type_dyn() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { return ::hx::Val( cpp::Struct<  DiscordEntitlement >( internal_ ) ); }
		if (HX_FIELD_EQ(inName,"get_skuID") ) { return ::hx::Val( get_skuID_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_skuID") ) { return ::hx::Val( set_skuID_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val Entitlement_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 2:
		if (HX_FIELD_EQ(inName,"id") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_id(inValue.Cast< ::cpp::Int64 >()) ); }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"type") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_type(inValue.Cast< int >()) ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"skuID") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_skuID(inValue.Cast< ::cpp::Int64 >()) ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { internal_=inValue.Cast< cpp::Struct<  DiscordEntitlement >  >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Entitlement_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("internal_",82,ee,23,3f));
	outFields->push(HX_("id",db,5b,00,00));
	outFields->push(HX_("type",ba,f2,08,4d));
	outFields->push(HX_("skuID",f8,91,27,7e));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo Entitlement_obj_sMemberStorageInfo[] = {
	{::hx::fsUnknown /*  DiscordEntitlement */ ,(int)offsetof(Entitlement_obj,internal_),HX_("internal_",82,ee,23,3f)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *Entitlement_obj_sStaticStorageInfo = 0;
#endif

static ::String Entitlement_obj_sMemberFields[] = {
	HX_("internal_",82,ee,23,3f),
	HX_("get_id",24,f3,2f,a3),
	HX_("set_id",98,47,78,6f),
	HX_("get_type",43,ae,c3,cc),
	HX_("set_type",b7,07,21,7b),
	HX_("get_skuID",4f,ee,d0,c1),
	HX_("set_skuID",5b,da,21,a5),
	::String(null()) };

::hx::Class Entitlement_obj::__mClass;

void Entitlement_obj::__register()
{
	Entitlement_obj _hx_dummy;
	Entitlement_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("discord.Entitlement",cb,af,3d,96);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(Entitlement_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< Entitlement_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Entitlement_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Entitlement_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace discord