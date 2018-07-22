#pragma once

#include "NIAVObject.h"
#include "TES3Collections.h"

namespace NI {
	struct Node : AVObject {
		TES3::TArray<AVObject> children; // 0x90
		void * effectList; // 0xA8 // Maybe?
		void * bound; // 0xAC // Maybe?

		//
		// vTable wrappers.
		//

		void attachChild(AVObject * child, bool useFirstAvailable = false);
		AVObject * detachChild(AVObject * child);
		AVObject * detachChildAt(unsigned int index);

	};
	static_assert(sizeof(Node) == 0xB0, "NI::Node failed size validation");

	struct Node_vTable : AVObject_vTable {
		void (__thiscall * attachChild)(Node *, AVObject *, bool); // 0x94
		AVObject * (__thiscall * detachChild)(Node *, AVObject *); // 0x98
		AVObject * (__thiscall * detachChildAt)(Node *, unsigned int); // 0x9C
		void * setChildAt; // 0xA0
		void * updateBoundUpwards; // 0xA4
	};
	static_assert(sizeof(Node_vTable) == 0xA8, "NI::Node's vtable failed size validation");
}
