#include "TES3GlobalVariableLua.h"

#include "LuaManager.h"
#include "TES3ObjectLua.h"

#include "TES3GlobalVariable.h"

namespace mwse {
	namespace lua {
		void bindTES3GlobalVariable() {
			// Get our lua state.
			auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
			sol::state& state = stateHandle.state;

			// Start our usertype. We must finish this with state.set_usertype.
			auto usertypeDefinition = state.create_simple_usertype<TES3::GlobalVariable>();
			usertypeDefinition.set("new", sol::no_constructor);

			// Define inheritance structures. These must be defined in order from top to bottom. The complete chain must be defined.
			usertypeDefinition.set(sol::base_classes, sol::bases<TES3::BaseObject>());
			setUserdataForBaseObject(usertypeDefinition);

			// Basic property binding.
			usertypeDefinition.set("value", &TES3::GlobalVariable::value);

			// Finish up our usertype.
			state.set_usertype("tes3globalVariable", usertypeDefinition);
		}
	}
}
