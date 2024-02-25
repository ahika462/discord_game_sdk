// Generated by Haxe 4.3.3
#ifndef INCLUDED_discord_Presence
#define INCLUDED_discord_Presence

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
HX_DECLARE_CLASS1(discord,Activity)
HX_DECLARE_CLASS1(discord,Presence)

namespace discord{


class HXCPP_CLASS_ATTRIBUTES Presence_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef Presence_obj OBJ_;
		Presence_obj();

	public:
		enum { _hx_ClassId = 0x7fd21b23 };

		void __construct( ::Dynamic status, ::discord::Activity activity);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="discord.Presence")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"discord.Presence"); }
		static ::hx::ObjectPtr< Presence_obj > __new( ::Dynamic status, ::discord::Activity activity);
		static ::hx::ObjectPtr< Presence_obj > __alloc(::hx::Ctx *_hx_ctx, ::Dynamic status, ::discord::Activity activity);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~Presence_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		::hx::Val __SetField(const ::String &inString,const ::hx::Val &inValue, ::hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("Presence",5b,0e,89,40); }

		 DiscordPresence internal_;
		int get_status();
		::Dynamic get_status_dyn();

		int set_status(int v);
		::Dynamic set_status_dyn();

		 ::discord::Activity _activity;
		 ::discord::Activity get_activity();
		::Dynamic get_activity_dyn();

		 ::discord::Activity set_activity( ::discord::Activity v);
		::Dynamic set_activity_dyn();

};

} // end namespace discord

#endif /* INCLUDED_discord_Presence */ 