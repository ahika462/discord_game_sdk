// Generated by Haxe 4.3.3
#ifndef INCLUDED_discord_LobbyMemberTransaction
#define INCLUDED_discord_LobbyMemberTransaction

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_STACK_FRAME(_hx_pos_b0aefb22e98323b3_1309_new)
#ifndef INCLUDED_6db1f306f8fa425f
#define INCLUDED_6db1f306f8fa425f
#include "C:/Users/Home/Documents/GitHub/discord_game_sdk/haxe/discord/_internal/ffi.h"
#endif
HX_DECLARE_CLASS1(discord,LobbyMemberTransaction)

namespace discord{


class HXCPP_CLASS_ATTRIBUTES LobbyMemberTransaction_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef LobbyMemberTransaction_obj OBJ_;
		LobbyMemberTransaction_obj();

	public:
		enum { _hx_ClassId = 0x0a042196 };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="discord.LobbyMemberTransaction")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"discord.LobbyMemberTransaction"); }

		inline static ::hx::ObjectPtr< LobbyMemberTransaction_obj > __new() {
			::hx::ObjectPtr< LobbyMemberTransaction_obj > __this = new LobbyMemberTransaction_obj();
			__this->__construct();
			return __this;
		}

		inline static ::hx::ObjectPtr< LobbyMemberTransaction_obj > __alloc(::hx::Ctx *_hx_ctx) {
			LobbyMemberTransaction_obj *__this = (LobbyMemberTransaction_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(LobbyMemberTransaction_obj), true, "discord.LobbyMemberTransaction"));
			*(void **)__this = LobbyMemberTransaction_obj::_hx_vtable;
{
            	HX_STACKFRAME(&_hx_pos_b0aefb22e98323b3_1309_new)
            	}
		
			return __this;
		}

		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~LobbyMemberTransaction_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("LobbyMemberTransaction",ce,d4,0c,8e); }

		 IDiscordLobbyMemberTransaction* internal_;
		int setMetadata(::String key,::String value);
		::Dynamic setMetadata_dyn();

		int deleteMetadata(::String key);
		::Dynamic deleteMetadata_dyn();

};

} // end namespace discord

#endif /* INCLUDED_discord_LobbyMemberTransaction */ 