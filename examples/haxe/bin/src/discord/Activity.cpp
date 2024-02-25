// Generated by Haxe 4.3.3
#include <hxcpp.h>

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
#ifndef INCLUDED_discord_Activity
#include <discord/Activity.h>
#endif
#ifndef INCLUDED_discord_ActivityAssets
#include <discord/ActivityAssets.h>
#endif
#ifndef INCLUDED_discord_ActivityParty
#include <discord/ActivityParty.h>
#endif
#ifndef INCLUDED_discord_ActivitySecrets
#include <discord/ActivitySecrets.h>
#endif
#ifndef INCLUDED_discord_ActivityTimestamps
#include <discord/ActivityTimestamps.h>
#endif
#ifndef INCLUDED_discord_PartySize
#include <discord/PartySize.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_610_new,"discord.Activity","new",0x08a2e663,"discord.Activity.new","discord/Types.hx",610,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_630_get_type,"discord.Activity","get_type",0x5316ed60,"discord.Activity.get_type","discord/Types.hx",630,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_634_set_type,"discord.Activity","set_type",0x017446d4,"discord.Activity.set_type","discord/Types.hx",634,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_640_get_applicationID,"discord.Activity","get_applicationID",0xf168dfc5,"discord.Activity.get_applicationID","discord/Types.hx",640,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_644_set_applicationID,"discord.Activity","set_applicationID",0x14d6b7d1,"discord.Activity.set_applicationID","discord/Types.hx",644,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_650_get_name,"discord.Activity","get_name",0x4f0d6cf1,"discord.Activity.get_name","discord/Types.hx",650,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_656_set_name,"discord.Activity","set_name",0xfd6ac665,"discord.Activity.set_name","discord/Types.hx",656,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_662_get_state,"discord.Activity","get_state",0xca38ccab,"discord.Activity.get_state","discord/Types.hx",662,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_668_set_state,"discord.Activity","set_state",0xad89b8b7,"discord.Activity.set_state","discord/Types.hx",668,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_674_get_details,"discord.Activity","get_details",0xd87a8ddc,"discord.Activity.get_details","discord/Types.hx",674,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_680_set_details,"discord.Activity","set_details",0xe2e794e8,"discord.Activity.set_details","discord/Types.hx",680,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_687_get_timestamps,"discord.Activity","get_timestamps",0xe9dbe203,"discord.Activity.get_timestamps","discord/Types.hx",687,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_691_set_timestamps,"discord.Activity","set_timestamps",0x09fbca77,"discord.Activity.set_timestamps","discord/Types.hx",691,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_698_get_assets,"discord.Activity","get_assets",0x6d81b8a9,"discord.Activity.get_assets","discord/Types.hx",698,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_702_set_assets,"discord.Activity","set_assets",0x70ff571d,"discord.Activity.set_assets","discord/Types.hx",702,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_709_get_party,"discord.Activity","get_party",0x0382e7c0,"discord.Activity.get_party","discord/Types.hx",709,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_713_set_party,"discord.Activity","set_party",0xe6d3d3cc,"discord.Activity.set_party","discord/Types.hx",713,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_720_get_secrets,"discord.Activity","get_secrets",0x89a6451d,"discord.Activity.get_secrets","discord/Types.hx",720,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_724_set_secrets,"discord.Activity","set_secrets",0x94134c29,"discord.Activity.set_secrets","discord/Types.hx",724,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_730_get_instance,"discord.Activity","get_instance",0xabf8653b,"discord.Activity.get_instance","discord/Types.hx",730,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_734_set_instance,"discord.Activity","set_instance",0xc0f188af,"discord.Activity.set_instance","discord/Types.hx",734,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_740_get_supportedPlatforms,"discord.Activity","get_supportedPlatforms",0xd43d9f78,"discord.Activity.get_supportedPlatforms","discord/Types.hx",740,0xbb915808)
HX_LOCAL_STACK_FRAME(_hx_pos_7649ee6aacb4e5ef_744_set_supportedPlatforms,"discord.Activity","set_supportedPlatforms",0x07e91bec,"discord.Activity.set_supportedPlatforms","discord/Types.hx",744,0xbb915808)
namespace discord{

void Activity_obj::__construct( ::Dynamic type, ::Dynamic applicationID,::String name,::String state,::String details, ::discord::ActivityTimestamps timestamps, ::discord::ActivityAssets assets, ::discord::ActivityParty party, ::discord::ActivitySecrets secrets, ::Dynamic instance, ::Dynamic supportedPlatforms){
            	HX_GC_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_610_new)
HXLINE( 716)		this->_secrets =  ::discord::ActivitySecrets_obj::__alloc( HX_CTX ,null(),null(),null());
HXLINE( 705)		this->_party =  ::discord::ActivityParty_obj::__alloc( HX_CTX ,null(),null(),null());
HXLINE( 694)		this->_assets =  ::discord::ActivityAssets_obj::__alloc( HX_CTX ,null(),null(),null(),null());
HXLINE( 683)		this->_timestamps =  ::discord::ActivityTimestamps_obj::__alloc( HX_CTX ,null(),null());
HXLINE( 614)		 ::Dynamic tmp = type;
HXDLIN( 614)		int _hx_tmp;
HXDLIN( 614)		if (::hx::IsNotNull( tmp )) {
HXLINE( 614)			_hx_tmp = ( (int)(tmp) );
            		}
            		else {
HXLINE( 614)			_hx_tmp = 0;
            		}
HXDLIN( 614)		this->set_type(_hx_tmp);
HXLINE( 615)		 ::Dynamic tmp1 = applicationID;
HXDLIN( 615)		::cpp::Int64 _hx_tmp1;
HXDLIN( 615)		if (::hx::IsNotNull( tmp1 )) {
HXLINE( 615)			_hx_tmp1 = ( (::cpp::Int64)(tmp1) );
            		}
            		else {
HXLINE( 615)			_hx_tmp1 = ( (::cpp::Int64)(0) );
            		}
HXDLIN( 615)		this->set_applicationID(_hx_tmp1);
HXLINE( 616)		::String tmp2 = name;
HXDLIN( 616)		::String _hx_tmp2;
HXDLIN( 616)		if (::hx::IsNotNull( tmp2 )) {
HXLINE( 616)			_hx_tmp2 = tmp2;
            		}
            		else {
HXLINE( 616)			_hx_tmp2 = HX_("",00,00,00,00);
            		}
HXDLIN( 616)		this->set_name(_hx_tmp2);
HXLINE( 617)		::String tmp3 = state;
HXDLIN( 617)		::String _hx_tmp3;
HXDLIN( 617)		if (::hx::IsNotNull( tmp3 )) {
HXLINE( 617)			_hx_tmp3 = tmp3;
            		}
            		else {
HXLINE( 617)			_hx_tmp3 = HX_("",00,00,00,00);
            		}
HXDLIN( 617)		this->set_state(_hx_tmp3);
HXLINE( 618)		::String tmp4 = details;
HXDLIN( 618)		::String _hx_tmp4;
HXDLIN( 618)		if (::hx::IsNotNull( tmp4 )) {
HXLINE( 618)			_hx_tmp4 = tmp4;
            		}
            		else {
HXLINE( 618)			_hx_tmp4 = HX_("",00,00,00,00);
            		}
HXDLIN( 618)		this->set_details(_hx_tmp4);
HXLINE( 619)		 ::discord::ActivityTimestamps tmp5 = timestamps;
HXDLIN( 619)		 ::discord::ActivityTimestamps _hx_tmp5;
HXDLIN( 619)		if (::hx::IsNotNull( tmp5 )) {
HXLINE( 619)			_hx_tmp5 = tmp5;
            		}
            		else {
HXLINE( 619)			_hx_tmp5 =  ::discord::ActivityTimestamps_obj::__alloc( HX_CTX ,null(),null());
            		}
HXDLIN( 619)		this->set_timestamps(_hx_tmp5);
HXLINE( 620)		 ::discord::ActivityAssets tmp6 = assets;
HXDLIN( 620)		 ::discord::ActivityAssets _hx_tmp6;
HXDLIN( 620)		if (::hx::IsNotNull( tmp6 )) {
HXLINE( 620)			_hx_tmp6 = tmp6;
            		}
            		else {
HXLINE( 620)			_hx_tmp6 =  ::discord::ActivityAssets_obj::__alloc( HX_CTX ,null(),null(),null(),null());
            		}
HXDLIN( 620)		this->set_assets(_hx_tmp6);
HXLINE( 621)		 ::discord::ActivityParty tmp7 = party;
HXDLIN( 621)		 ::discord::ActivityParty _hx_tmp7;
HXDLIN( 621)		if (::hx::IsNotNull( tmp7 )) {
HXLINE( 621)			_hx_tmp7 = tmp7;
            		}
            		else {
HXLINE( 621)			_hx_tmp7 =  ::discord::ActivityParty_obj::__alloc( HX_CTX ,null(),null(),null());
            		}
HXDLIN( 621)		this->set_party(_hx_tmp7);
HXLINE( 622)		 ::discord::ActivitySecrets tmp8 = secrets;
HXDLIN( 622)		 ::discord::ActivitySecrets _hx_tmp8;
HXDLIN( 622)		if (::hx::IsNotNull( tmp8 )) {
HXLINE( 622)			_hx_tmp8 = tmp8;
            		}
            		else {
HXLINE( 622)			_hx_tmp8 =  ::discord::ActivitySecrets_obj::__alloc( HX_CTX ,null(),null(),null());
            		}
HXDLIN( 622)		this->set_secrets(_hx_tmp8);
HXLINE( 623)		 ::Dynamic tmp9 = instance;
HXDLIN( 623)		bool _hx_tmp9;
HXDLIN( 623)		if (::hx::IsNotNull( tmp9 )) {
HXLINE( 623)			_hx_tmp9 = ( (bool)(tmp9) );
            		}
            		else {
HXLINE( 623)			_hx_tmp9 = false;
            		}
HXDLIN( 623)		this->set_instance(_hx_tmp9);
HXLINE( 624)		 ::Dynamic tmp10 = supportedPlatforms;
HXDLIN( 624)		unsigned int _hx_tmp10;
HXDLIN( 624)		if (::hx::IsNotNull( tmp10 )) {
HXLINE( 624)			_hx_tmp10 = ( (unsigned int)(tmp10) );
            		}
            		else {
HXLINE( 624)			_hx_tmp10 = ( (unsigned int)(0) );
            		}
HXDLIN( 624)		this->set_supportedPlatforms(_hx_tmp10);
            	}

Dynamic Activity_obj::__CreateEmpty() { return new Activity_obj; }

void *Activity_obj::_hx_vtable = 0;

Dynamic Activity_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< Activity_obj > _hx_result = new Activity_obj();
	_hx_result->__construct(inArgs[0],inArgs[1],inArgs[2],inArgs[3],inArgs[4],inArgs[5],inArgs[6],inArgs[7],inArgs[8],inArgs[9],inArgs[10]);
	return _hx_result;
}

bool Activity_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x57359a9b;
}

int Activity_obj::get_type(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_630_get_type)
            	return (int)internal_.type;

HXDLIN( 630)		return 0;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_type,return )

int Activity_obj::set_type(int v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_634_set_type)
            	internal_.type = (EDiscordActivityType)v;

HXDLIN( 634)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_type,return )

::cpp::Int64 Activity_obj::get_applicationID(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_640_get_applicationID)
            	return internal_.application_id;

HXDLIN( 640)		return ( (::cpp::Int64)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_applicationID,return )

::cpp::Int64 Activity_obj::set_applicationID(::cpp::Int64 v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_644_set_applicationID)
            	internal_.application_id = v;

HXDLIN( 644)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_applicationID,return )

::String Activity_obj::get_name(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_650_get_name)
            	return internal_.name;

HXDLIN( 650)		return HX_("",00,00,00,00);
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_name,return )

::String Activity_obj::set_name(::String v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_656_set_name)
            	strncpy(internal_.name, v, 128);
					internal_.name[128 - 1] = '\0';
					return internal_.name;

HXDLIN( 656)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_name,return )

::String Activity_obj::get_state(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_662_get_state)
            	return internal_.state;

HXDLIN( 662)		return HX_("",00,00,00,00);
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_state,return )

::String Activity_obj::set_state(::String v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_668_set_state)
            	strncpy(internal_.state, v, 128);
					internal_.state[128 - 1] = '\0';
					return internal_.state;

HXDLIN( 668)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_state,return )

::String Activity_obj::get_details(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_674_get_details)
            	return internal_.details;

HXDLIN( 674)		return HX_("",00,00,00,00);
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_details,return )

::String Activity_obj::set_details(::String v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_680_set_details)
            	strncpy(internal_.details, v, 128);
					internal_.details[128 - 1] = '\0';
					return internal_.details;

HXDLIN( 680)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_details,return )

 ::discord::ActivityTimestamps Activity_obj::get_timestamps(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_687_get_timestamps)
            	_timestamps->internal_ = internal_.timestamps;

HXDLIN( 687)		return this->_timestamps;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_timestamps,return )

 ::discord::ActivityTimestamps Activity_obj::set_timestamps( ::discord::ActivityTimestamps v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_691_set_timestamps)
            	_timestamps->internal_ = v->internal_;

HXDLIN( 691)		return this->_timestamps;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_timestamps,return )

 ::discord::ActivityAssets Activity_obj::get_assets(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_698_get_assets)
            	_assets->internal_ = internal_.assets;

HXDLIN( 698)		return this->_assets;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_assets,return )

 ::discord::ActivityAssets Activity_obj::set_assets( ::discord::ActivityAssets v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_702_set_assets)
            	_assets->internal_ = v->internal_;

HXDLIN( 702)		return this->_assets;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_assets,return )

 ::discord::ActivityParty Activity_obj::get_party(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_709_get_party)
            	_party->internal_ = internal_.party;

HXDLIN( 709)		return this->_party;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_party,return )

 ::discord::ActivityParty Activity_obj::set_party( ::discord::ActivityParty v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_713_set_party)
            	_party->internal_ = v->internal_;

HXDLIN( 713)		return this->_party;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_party,return )

 ::discord::ActivitySecrets Activity_obj::get_secrets(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_720_get_secrets)
            	_secrets->internal_ = internal_.secrets;

HXDLIN( 720)		return this->_secrets;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_secrets,return )

 ::discord::ActivitySecrets Activity_obj::set_secrets( ::discord::ActivitySecrets v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_724_set_secrets)
            	_secrets->internal_ = v->internal_;

HXDLIN( 724)		return this->_secrets;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_secrets,return )

bool Activity_obj::get_instance(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_730_get_instance)
            	return internal_.instance;

HXDLIN( 730)		return false;
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_instance,return )

bool Activity_obj::set_instance(bool v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_734_set_instance)
            	internal_.instance = v;

HXDLIN( 734)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_instance,return )

unsigned int Activity_obj::get_supportedPlatforms(){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_740_get_supportedPlatforms)
            	return internal_.supported_platforms;

HXDLIN( 740)		return ( (unsigned int)(0) );
            	}


HX_DEFINE_DYNAMIC_FUNC0(Activity_obj,get_supportedPlatforms,return )

unsigned int Activity_obj::set_supportedPlatforms(unsigned int v){
            	HX_STACKFRAME(&_hx_pos_7649ee6aacb4e5ef_744_set_supportedPlatforms)
            	internal_.supported_platforms = v;

HXDLIN( 744)		return v;
            	}


HX_DEFINE_DYNAMIC_FUNC1(Activity_obj,set_supportedPlatforms,return )


::hx::ObjectPtr< Activity_obj > Activity_obj::__new( ::Dynamic type, ::Dynamic applicationID,::String name,::String state,::String details, ::discord::ActivityTimestamps timestamps, ::discord::ActivityAssets assets, ::discord::ActivityParty party, ::discord::ActivitySecrets secrets, ::Dynamic instance, ::Dynamic supportedPlatforms) {
	::hx::ObjectPtr< Activity_obj > __this = new Activity_obj();
	__this->__construct(type,applicationID,name,state,details,timestamps,assets,party,secrets,instance,supportedPlatforms);
	return __this;
}

::hx::ObjectPtr< Activity_obj > Activity_obj::__alloc(::hx::Ctx *_hx_ctx, ::Dynamic type, ::Dynamic applicationID,::String name,::String state,::String details, ::discord::ActivityTimestamps timestamps, ::discord::ActivityAssets assets, ::discord::ActivityParty party, ::discord::ActivitySecrets secrets, ::Dynamic instance, ::Dynamic supportedPlatforms) {
	Activity_obj *__this = (Activity_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(Activity_obj), true, "discord.Activity"));
	*(void **)__this = Activity_obj::_hx_vtable;
	__this->__construct(type,applicationID,name,state,details,timestamps,assets,party,secrets,instance,supportedPlatforms);
	return __this;
}

Activity_obj::Activity_obj()
{
}

void Activity_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Activity);
	HX_MARK_MEMBER_NAME(internal_,"internal_");
	HX_MARK_MEMBER_NAME(_timestamps,"_timestamps");
	HX_MARK_MEMBER_NAME(_assets,"_assets");
	HX_MARK_MEMBER_NAME(_party,"_party");
	HX_MARK_MEMBER_NAME(_secrets,"_secrets");
	HX_MARK_END_CLASS();
}

void Activity_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(internal_,"internal_");
	HX_VISIT_MEMBER_NAME(_timestamps,"_timestamps");
	HX_VISIT_MEMBER_NAME(_assets,"_assets");
	HX_VISIT_MEMBER_NAME(_party,"_party");
	HX_VISIT_MEMBER_NAME(_secrets,"_secrets");
}

::hx::Val Activity_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"type") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_type() ); }
		if (HX_FIELD_EQ(inName,"name") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_name() ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"state") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_state() ); }
		if (HX_FIELD_EQ(inName,"party") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_party() ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"assets") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_assets() ); }
		if (HX_FIELD_EQ(inName,"_party") ) { return ::hx::Val( _party ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"details") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_details() ); }
		if (HX_FIELD_EQ(inName,"_assets") ) { return ::hx::Val( _assets ); }
		if (HX_FIELD_EQ(inName,"secrets") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_secrets() ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"get_type") ) { return ::hx::Val( get_type_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_type") ) { return ::hx::Val( set_type_dyn() ); }
		if (HX_FIELD_EQ(inName,"get_name") ) { return ::hx::Val( get_name_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_name") ) { return ::hx::Val( set_name_dyn() ); }
		if (HX_FIELD_EQ(inName,"_secrets") ) { return ::hx::Val( _secrets ); }
		if (HX_FIELD_EQ(inName,"instance") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_instance() ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { return ::hx::Val( cpp::Struct<  DiscordActivity >( internal_ ) ); }
		if (HX_FIELD_EQ(inName,"get_state") ) { return ::hx::Val( get_state_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_state") ) { return ::hx::Val( set_state_dyn() ); }
		if (HX_FIELD_EQ(inName,"get_party") ) { return ::hx::Val( get_party_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_party") ) { return ::hx::Val( set_party_dyn() ); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"timestamps") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_timestamps() ); }
		if (HX_FIELD_EQ(inName,"get_assets") ) { return ::hx::Val( get_assets_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_assets") ) { return ::hx::Val( set_assets_dyn() ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"get_details") ) { return ::hx::Val( get_details_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_details") ) { return ::hx::Val( set_details_dyn() ); }
		if (HX_FIELD_EQ(inName,"_timestamps") ) { return ::hx::Val( _timestamps ); }
		if (HX_FIELD_EQ(inName,"get_secrets") ) { return ::hx::Val( get_secrets_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_secrets") ) { return ::hx::Val( set_secrets_dyn() ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"get_instance") ) { return ::hx::Val( get_instance_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_instance") ) { return ::hx::Val( set_instance_dyn() ); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"applicationID") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_applicationID() ); }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"get_timestamps") ) { return ::hx::Val( get_timestamps_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_timestamps") ) { return ::hx::Val( set_timestamps_dyn() ); }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"get_applicationID") ) { return ::hx::Val( get_applicationID_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_applicationID") ) { return ::hx::Val( set_applicationID_dyn() ); }
		break;
	case 18:
		if (HX_FIELD_EQ(inName,"supportedPlatforms") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( get_supportedPlatforms() ); }
		break;
	case 22:
		if (HX_FIELD_EQ(inName,"get_supportedPlatforms") ) { return ::hx::Val( get_supportedPlatforms_dyn() ); }
		if (HX_FIELD_EQ(inName,"set_supportedPlatforms") ) { return ::hx::Val( set_supportedPlatforms_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val Activity_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"type") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_type(inValue.Cast< int >()) ); }
		if (HX_FIELD_EQ(inName,"name") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_name(inValue.Cast< ::String >()) ); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"state") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_state(inValue.Cast< ::String >()) ); }
		if (HX_FIELD_EQ(inName,"party") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_party(inValue.Cast<  ::discord::ActivityParty >()) ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"assets") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_assets(inValue.Cast<  ::discord::ActivityAssets >()) ); }
		if (HX_FIELD_EQ(inName,"_party") ) { _party=inValue.Cast<  ::discord::ActivityParty >(); return inValue; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"details") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_details(inValue.Cast< ::String >()) ); }
		if (HX_FIELD_EQ(inName,"_assets") ) { _assets=inValue.Cast<  ::discord::ActivityAssets >(); return inValue; }
		if (HX_FIELD_EQ(inName,"secrets") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_secrets(inValue.Cast<  ::discord::ActivitySecrets >()) ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"_secrets") ) { _secrets=inValue.Cast<  ::discord::ActivitySecrets >(); return inValue; }
		if (HX_FIELD_EQ(inName,"instance") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_instance(inValue.Cast< bool >()) ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"internal_") ) { internal_=inValue.Cast< cpp::Struct<  DiscordActivity >  >(); return inValue; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"timestamps") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_timestamps(inValue.Cast<  ::discord::ActivityTimestamps >()) ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"_timestamps") ) { _timestamps=inValue.Cast<  ::discord::ActivityTimestamps >(); return inValue; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"applicationID") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_applicationID(inValue.Cast< ::cpp::Int64 >()) ); }
		break;
	case 18:
		if (HX_FIELD_EQ(inName,"supportedPlatforms") ) { if (inCallProp == ::hx::paccAlways) return ::hx::Val( set_supportedPlatforms(inValue.Cast< unsigned int >()) ); }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Activity_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("internal_",82,ee,23,3f));
	outFields->push(HX_("type",ba,f2,08,4d));
	outFields->push(HX_("applicationID",2b,5f,bc,37));
	outFields->push(HX_("name",4b,72,ff,48));
	outFields->push(HX_("state",11,76,0b,84));
	outFields->push(HX_("details",c2,dc,56,ab));
	outFields->push(HX_("_timestamps",fc,33,b5,41));
	outFields->push(HX_("timestamps",dd,66,2b,6f));
	outFields->push(HX_("_assets",22,5a,7a,ba));
	outFields->push(HX_("assets",83,48,03,4c));
	outFields->push(HX_("_party",67,d8,3c,b9));
	outFields->push(HX_("party",26,91,55,bd));
	outFields->push(HX_("_secrets",84,ed,3a,96));
	outFields->push(HX_("secrets",03,94,82,5c));
	outFields->push(HX_("instance",95,1f,e1,59));
	outFields->push(HX_("supportedPlatforms",52,8e,44,dc));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo Activity_obj_sMemberStorageInfo[] = {
	{::hx::fsUnknown /*  DiscordActivity */ ,(int)offsetof(Activity_obj,internal_),HX_("internal_",82,ee,23,3f)},
	{::hx::fsObject /*  ::discord::ActivityTimestamps */ ,(int)offsetof(Activity_obj,_timestamps),HX_("_timestamps",fc,33,b5,41)},
	{::hx::fsObject /*  ::discord::ActivityAssets */ ,(int)offsetof(Activity_obj,_assets),HX_("_assets",22,5a,7a,ba)},
	{::hx::fsObject /*  ::discord::ActivityParty */ ,(int)offsetof(Activity_obj,_party),HX_("_party",67,d8,3c,b9)},
	{::hx::fsObject /*  ::discord::ActivitySecrets */ ,(int)offsetof(Activity_obj,_secrets),HX_("_secrets",84,ed,3a,96)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *Activity_obj_sStaticStorageInfo = 0;
#endif

static ::String Activity_obj_sMemberFields[] = {
	HX_("internal_",82,ee,23,3f),
	HX_("get_type",43,ae,c3,cc),
	HX_("set_type",b7,07,21,7b),
	HX_("get_applicationID",82,6a,2c,3e),
	HX_("set_applicationID",8e,42,9a,61),
	HX_("get_name",d4,2d,ba,c8),
	HX_("set_name",48,87,17,77),
	HX_("get_state",68,d2,b4,c7),
	HX_("set_state",74,be,05,ab),
	HX_("get_details",d9,3c,51,31),
	HX_("set_details",e5,43,be,3b),
	HX_("_timestamps",fc,33,b5,41),
	HX_("get_timestamps",26,ef,20,e5),
	HX_("set_timestamps",9a,d7,40,05),
	HX_("_assets",22,5a,7a,ba),
	HX_("get_assets",4c,b8,8a,3c),
	HX_("set_assets",c0,56,08,40),
	HX_("_party",67,d8,3c,b9),
	HX_("get_party",7d,ed,fe,00),
	HX_("set_party",89,d9,4f,e4),
	HX_("_secrets",84,ed,3a,96),
	HX_("get_secrets",1a,f4,7c,e2),
	HX_("set_secrets",26,fb,e9,ec),
	HX_("get_instance",9e,d3,fa,0e),
	HX_("set_instance",12,f7,f3,23),
	HX_("get_supportedPlatforms",9b,07,d9,35),
	HX_("set_supportedPlatforms",0f,84,84,69),
	::String(null()) };

::hx::Class Activity_obj::__mClass;

void Activity_obj::__register()
{
	Activity_obj _hx_dummy;
	Activity_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("discord.Activity",f1,78,39,00);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(Activity_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< Activity_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Activity_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Activity_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace discord