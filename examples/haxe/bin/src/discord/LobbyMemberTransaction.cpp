// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
#ifndef INCLUDED_discord_LobbyMemberTransaction
#include <discord/LobbyMemberTransaction.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_b0aefb22e98323b3_1309_new,"discord.LobbyMemberTransaction","new",0xa4cd6c42,"discord.LobbyMemberTransaction.new","discord/Types.hx",1309,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b0aefb22e98323b3_1313_setMetadata,"discord.LobbyMemberTransaction","setMetadata",0x19a5ff13,"discord.LobbyMemberTransaction.setMetadata","discord/Types.hx",1313,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_b0aefb22e98323b3_1318_deleteMetadata,"discord.LobbyMemberTransaction","deleteMetadata",0x38761218,"discord.LobbyMemberTransaction.deleteMetadata","discord/Types.hx",1318,0xbb915808)
namespace discord{

void LobbyMemberTransaction_obj::__construct(){
            	HX_STACKFRAME(&_hx_pos_b0aefb22e98323b3_1309_new)
            	}

Dynamic LobbyMemberTransaction_obj::__CreateEmpty() { return new LobbyMemberTransaction_obj; }

void *LobbyMemberTransaction_obj::_hx_vtable = 0;

Dynamic LobbyMemberTransaction_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< LobbyMemberTransaction_obj > _hx_result = new LobbyMemberTransaction_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool LobbyMemberTransaction_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x0a042196;
}

int LobbyMemberTransaction_obj::setMetadata(::String key,::String value){
            	HX_STACKFRAME(&_hx_pos_b0aefb22e98323b3_1313_setMetadata)
            	return (int)internal_->set_metadata(internal_, const_cast<char*>(key.__s), const_cast<char*>(value.__s));

HXDLIN(1313)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC2(LobbyMemberTransaction_obj,setMetadata,return )

int LobbyMemberTransaction_obj::deleteMetadata(::String key){
            	HX_STACKFRAME(&_hx_pos_b0aefb22e98323b3_1318_deleteMetadata)
            	return (int)internal_->delete_metadata(internal_, const_cast<char*>(key.__s));

HXDLIN(1318)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC1(LobbyMemberTransaction_obj,deleteMetadata,return )


LobbyMemberTransaction_obj::LobbyMemberTransaction_obj()
{
}

void LobbyMemberTransaction_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(LobbyMemberTransaction);
	HX_MARK_MEMBER_NAME(internal_,"internal_");
	HX_MARK_END_CLASS();
}

void LobbyMemberTransaction_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(internal_,"internal_");
}

::hx::Val LobbyMemberTransaction_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 11:
		if (HX_FIELD_EQ(inName,"setMetadata") ) { return ::hx::Val( setMetadata_dyn() ); }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"deleteMetadata") ) { return ::hx::Val( deleteMetadata_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

void LobbyMemberTransaction_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("internal_",82,ee,23,3f));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo LobbyMemberTransaction_obj_sMemberStorageInfo[] = {
	{::hx::fsUnknown /*  IDiscordLobbyMemberTransaction* */ ,(int)offsetof(LobbyMemberTransaction_obj,internal_),HX_("internal_",82,ee,23,3f)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *LobbyMemberTransaction_obj_sStaticStorageInfo = 0;
#endif

static ::String LobbyMemberTransaction_obj_sMemberFields[] = {
	HX_("setMetadata",31,b1,7a,70),
	HX_("deleteMetadata",ba,06,f1,99),
	::String(null()) };

::hx::Class LobbyMemberTransaction_obj::__mClass;

void LobbyMemberTransaction_obj::__register()
{
	LobbyMemberTransaction_obj _hx_dummy;
	LobbyMemberTransaction_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("discord.LobbyMemberTransaction",50,e3,d5,71);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(LobbyMemberTransaction_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< LobbyMemberTransaction_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = LobbyMemberTransaction_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = LobbyMemberTransaction_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace discord