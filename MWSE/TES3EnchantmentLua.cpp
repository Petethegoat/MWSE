#include "TES3EnchantmentLua.h"

#include "LuaManager.h"
#include "TES3ObjectLua.h"

#include "TES3Enchantment.h"
#include "LuaObject.h"

namespace mwse {
	namespace lua {
		auto createEnchantment( sol::table params )
		{
			return makeObjectCreator( TES3::ObjectType::Enchantment )->create( params, false );
		}

		void bindTES3Enchantment() {
			// Get our lua state.
			auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
			sol::state& state = stateHandle.state;

			// Start our usertype. We must finish this with state.set_usertype.
			auto usertypeDefinition = state.create_simple_usertype<TES3::Enchantment>();
			usertypeDefinition.set("new", sol::no_constructor);

			// Define inheritance structures. These must be defined in order from top to bottom. The complete chain must be defined.
			usertypeDefinition.set(sol::base_classes, sol::bases<TES3::Object, TES3::BaseObject>());
			setUserdataForObject(usertypeDefinition);

			// Basic property binding.
			usertypeDefinition.set("castType", &TES3::Enchantment::castType);
			usertypeDefinition.set("chargeCost", &TES3::Enchantment::chargeCost);
			usertypeDefinition.set("flags", &TES3::Enchantment::flags);
			usertypeDefinition.set("maxCharge", &TES3::Enchantment::maxCharge);

			// Basic function binding.
			usertypeDefinition.set("getActiveEffectCount", &TES3::Enchantment::getActiveEffectCount);
			usertypeDefinition.set("getFirstIndexOfEffect", &TES3::Enchantment::getFirstIndexOfEffect);

			// Indirect bindings to unions and arrays.
			usertypeDefinition.set("effects", sol::readonly_property([](TES3::Enchantment& self) { return std::ref(self.effects); }));

			// utility function bindings
			usertypeDefinition.set( "create", &createEnchantment );

			// Finish up our usertype.
			state.set_usertype("tes3enchantment", usertypeDefinition);
		}
	}
}
