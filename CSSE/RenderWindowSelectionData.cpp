#include "RenderWindowSelectionData.h"

namespace se::cs::dialog::render_window {
	void SelectionData::recalculateCenter() {
		const auto SelectionData_recalculateCenter = reinterpret_cast<void(__thiscall*)(SelectionData*)>(0x402919);
		SelectionData_recalculateCenter(this);
	}

	void SelectionData::recalculateRadius() {
		const auto SelectionData_recalculateRadius = reinterpret_cast<void(__thiscall*)(SelectionData*)>(0x403DF0);
		SelectionData_recalculateRadius(this);
	}

	void SelectionData::recalculateBound() {
		recalculateCenter();
		recalculateRadius();
	}

	void SelectionData::clear(bool unknownFlag) {
		const auto SelectionData_clear = reinterpret_cast<void(__thiscall*)(SelectionData*, bool)>(0x403391);
		SelectionData_clear(this, unknownFlag);
	}

	SelectionData::Target* SelectionData::getLastTarget() const {
		auto target = firstTarget;
		for (auto i = 1u; i < numberOfTargets; ++i) {
			target = target->next;
		}
		return target;
	}

	void UndoManager::storeCheckpoint(Action action) {
		const auto UndoManager_storeCheckpoint = reinterpret_cast<void(__thiscall*)(UndoManager*, Action, SelectionData::Target*)>(0x471300);
		auto target = SelectionData::get()->firstTarget;
		if (target) {
			UndoManager_storeCheckpoint(this, action, target);
		}
	}

	void UndoManager::undo() {
		const auto UndoManager_undo = reinterpret_cast<void(__thiscall*)(UndoManager*, int)>(0x471AD0);
		UndoManager_undo(this, 0);
	}

	void UndoManager::redo() {
		const auto UndoManager_redo = reinterpret_cast<void(__thiscall*)(UndoManager*)>(0x472680);
		UndoManager_redo(this);
	}
}
