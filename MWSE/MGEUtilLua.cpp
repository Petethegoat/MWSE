#include "MGEUtilLua.h"

#include "MGEApi.h"
#include "MGEPostShaders.h"

#include "LuaManager.h"
#include "LuaUtil.h"
#include "Log.h"

namespace mwse::lua {

	//
	// Distant Land config struct.
	//

	void bindMGEDistantLandConfig() {
		// Get our lua state.
		auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
		sol::state& state = stateHandle.state;

		// mge::DistantLandRenderConfig
		{
			// Start our usertype. We must finish this with state.set_usertype.
			auto usertypeDefinition = state.new_usertype<mge::DistantLandRenderConfig>("mgeDistantLandRenderConfig");
			usertypeDefinition["new"] = sol::no_constructor;

			// Properties.
			usertypeDefinition["aboveWaterFogEnd"] = &mge::DistantLandRenderConfig::AboveWaterFogEnd;
			usertypeDefinition["aboveWaterFogStart"] = &mge::DistantLandRenderConfig::AboveWaterFogStart;
			usertypeDefinition["belowWaterFogEnd"] = &mge::DistantLandRenderConfig::BelowWaterFogEnd;
			usertypeDefinition["belowWaterFogStart"] = &mge::DistantLandRenderConfig::BelowWaterFogStart;
			usertypeDefinition["drawDist"] = &mge::DistantLandRenderConfig::DrawDist;
			usertypeDefinition["farStaticEnd"] = &mge::DistantLandRenderConfig::FarStaticEnd;
			usertypeDefinition["farStaticMinSize"] = &mge::DistantLandRenderConfig::FarStaticMinSize;
			usertypeDefinition["interiorFogEnd"] = &mge::DistantLandRenderConfig::InteriorFogEnd;
			usertypeDefinition["interiorFogStart"] = &mge::DistantLandRenderConfig::InteriorFogStart;
			usertypeDefinition["nearStaticEnd"] = &mge::DistantLandRenderConfig::NearStaticEnd;
			usertypeDefinition["fogOffsetDist"] = &mge::DistantLandRenderConfig::FogOffsetDist;
			usertypeDefinition["fogDist"] = &mge::DistantLandRenderConfig::FogDist;
			usertypeDefinition["veryFarStaticEnd"] = &mge::DistantLandRenderConfig::VeryFarStaticEnd;
			usertypeDefinition["veryFarStaticMinSize"] = &mge::DistantLandRenderConfig::VeryFarStaticMinSize;
			usertypeDefinition["waterCaustics"] = &mge::DistantLandRenderConfig::WaterCaustics;
			usertypeDefinition["waterReflect"] = &mge::DistantLandRenderConfig::WaterReflect;
			usertypeDefinition["waterWaveHeight"] = &mge::DistantLandRenderConfig::WaterWaveHeight;
			usertypeDefinition["wind"] = &mge::DistantLandRenderConfig::Wind;
			// Note that DistantLandRenderConfig::ShadowResolution does not appear, as it is not configurable.
		}
	}

	//
	// General functions.
	//

	auto mge_getVersion() {
		return mge::api->getMGEVersion();
	}

	auto mge_getLightingMode() {
		return int(mge::api->lightingModeGet());
	}

	auto mge_setLightingMode(sol::optional<sol::table> params) {
		auto mode = mge::LightingMode::Vertex;
		if (getOptionalParam<bool>(params, "interiorOnly", false)) {
			mode = mge::LightingMode::PerPixelInteriorOnly;
		}
		else if (getOptionalParam<bool>(params, "dynamic", false)) {
			mode = mge::LightingMode::PerPixelAll;
		}

		mge::api->lightingModeSet(mode);
	}

	auto mge_getDistantLandRenderConfig() {
		return mge::api->getDistantLandRenderConfig();
	}

	auto mge_reloadDistantLand() {
		mge::api->reloadDistantLand();
	}

	//
	// HUD-related functions.
	//

	static std::string selectedHUDName;

	auto mge_resetHUD() {
		mge::api->hudReset();
	}

	auto mge_disableHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		mge::api->hudSetEnabled(hudName, false);
	}

	auto mge_enableHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		mge::api->hudSetEnabled(hudName, true);
	}

	auto mge_freeHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		mge::api->hudFree(hudName);
	}

	auto mge_fullscreenHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		mge::api->hudFullscreen(hudName);
	}

	auto mge_loadHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto texture = getOptionalParam<const char*>(params, "texture", nullptr);
		if (!hudName || !texture) {
			throw std::invalid_argument("hud or texture argument missing.");
		}

		mge::api->hudLoad(hudName, texture);

		if (getOptionalParam<bool>(params, "enable", false)) {
			mge::api->hudSetEnabled(hudName, true);
		}
	}

	auto mge_positionHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto x = getOptionalParam(params, "x", 0.0f);
		auto y = getOptionalParam(params, "y", 0.0f);
		mge::api->hudPosition(hudName, x, y);
	}

	auto mge_scaleHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto x = getOptionalParam(params, "x", 0.0f);
		auto y = getOptionalParam(params, "y", 0.0f);
		mge::api->hudScale(hudName, x, y);
	}

	auto mge_selectHUD(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		selectedHUDName = hudName;
	}

	auto mge_unselectHUD(sol::optional<sol::table> params) {
		selectedHUDName.clear();
	}

	auto mge_setHUDEffect(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto effect = getOptionalParam<const char*>(params, "effect", nullptr);

		if (!effect) {
			throw std::invalid_argument("effect argument missing.");
		}

		mge::api->hudSetEffect(hudName, effect);
	}

	auto mge_setHUDEffectFloat(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto variable = getOptionalParam<const char*>(params, "variable", nullptr);
		auto value = getOptionalParam<float>(params, "value");

		if (!value) {
			throw std::invalid_argument("value argument missing.");
		}

		mge::api->hudSetFloat(hudName, variable, value.value());
	}

	auto mge_setHUDEffectInt(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto variable = getOptionalParam<const char*>(params, "variable", nullptr);
		auto value = getOptionalParam<int>(params, "value");

		if (!value) {
			throw std::invalid_argument("value argument missing.");
		}

		mge::api->hudSetInt(hudName, variable, value.value());
	}

	auto mge_setHUDEffectVector4(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto variable = getOptionalParam<const char*>(params, "variable", nullptr);
		sol::table values = getOptionalParam<sol::table>(params, "value", sol::nil);

		if (values == sol::nil && values.size() != 4) {
			throw std::invalid_argument("value argument must be a length 4 array.");
		}

		float valueBuffer[4];
		for (size_t i = 0; i < 4; i++) {
			valueBuffer[i] = values[i];
		}
		mge::api->hudSetVector4(hudName, variable, valueBuffer);
	}

	auto mge_setHUDTexture(sol::optional<sol::table> params) {
		auto hudName = getOptionalParam<const char*>(params, "hud", nullptr);
		auto texture = getOptionalParam<const char*>(params, "texture", nullptr);
		if (!texture) {
			throw std::invalid_argument("texture argument missing.");
		}

		mge::api->hudSetTexture(hudName, texture);
	}

	//
	// Shader related functions.
	//

	sol::table mge_shaders(sol::this_state ts) {
		sol::state_view state(ts);
		sol::table shaders = state.create_table();

		for (size_t i = 0; true; i++) {
			auto s = mge::api->shaderListShaders(i);
			if (s) {
				shaders[i + 1] = mge::ShaderHandleLua(s);
			}
			else {
				break;
			}
		}

		return shaders;
	}

	//
	// Zoom-related functions.
	//

	auto mge_getZoomEnabled() {
		return mge::api->zoomGetEnabled();
	}

	auto mge_setZoomEnabled(bool value) {
		mge::api->zoomSetEnabled(value);
	}

	auto mge_setZoom(float value) {
		mge::api->zoomSetZoom(value);
	}

	auto mge_getZoom() {
		return mge::api->zoomGetZoom();
	}

	auto mge_zoomIn(sol::optional<sol::table> params) {
		float amount = getOptionalParam<float>(params, "amount", 0.0625f);
		mge::api->zoomIn(amount);
	}

	auto mge_zoomOut(sol::optional<sol::table> params) {
		float amount = getOptionalParam<float>(params, "amount", 0.0625f);
		mge::api->zoomOut(amount);
	}

	auto mge_setZoomContinuous(sol::optional<sol::table> params) {
		float rate = getOptionalParam<float>(params, "rate", 1.0f);
		float targetRate = getOptionalParam<float>(params, "targetRate", rate);
		mge::api->zoomSetZoomContinuous(rate, targetRate);
	}

	auto mge_stopZoom() {
		mge::api->zoomStop();
	}

	auto mge_getCameraShakeEnabled() {
		return mge::api->cameraShakeGetEnabled();
	}

	auto mge_setCameraShakeEnabled(bool value) {
		mge::api->cameraShakeSetEnabled(value);
	}

	auto mge_getCameraShakeMagnitude(float value) {
		return mge::api->cameraShakeGetMagnitude();
	}

	auto mge_setCameraShakeMagnitude(float value) {
		mge::api->cameraShakeSetMagnitude(value);
	}

	auto mge_getCameraShakeAcceleration(float value) {
		return mge::api->cameraShakeGetAcceleration();
	}

	auto mge_setCameraShakeAcceleration(float value) {
		mge::api->cameraShakeSetAcceleration(value);
	}

	//
	// Other MGE XE rendering functions.
	//

	auto mge_setWeatherScattering(sol::optional<sol::table> params) {
		auto outscatter = getOptionalParamVector3(params, "outscatter");
		auto inscatter = getOptionalParamVector3(params, "inscatter");

		if (!outscatter || !inscatter) {
			return false;
		}

		mge::api->weatherScatteringSet(&inscatter.value().x, &outscatter.value().x);
		return true;
	}

	auto mge_getWeatherScattering(sol::this_state ts) {
		float inscatter[3], outscatter[3];
		mge::api->weatherScatteringGet(inscatter, outscatter);

		sol::state_view state = ts;
		sol::table in = state.create_table_with(1, inscatter[0], 2, inscatter[1], 3, inscatter[2]);
		sol::table out = state.create_table_with(1, outscatter[0], 2, outscatter[1], 3, outscatter[2]);

		return std::make_tuple(in, out);
	}

	auto mge_getWeatherDLFog(int weatherID) {
		float fogDistMult, fogOffset;
		mge::api->weatherDistantFogGet(weatherID, &fogDistMult, &fogOffset);
		return std::make_tuple(fogDistMult, fogOffset);
	}

	auto mge_setWeatherDLFog(int weatherID, float fogDistMult, float fogOffset) {
		mge::api->weatherDistantFogSet(weatherID, fogDistMult, fogOffset);
	}

	auto mge_getWeatherPPLLight(int weatherID) {
		float sunMult, ambMult;
		mge::api->weatherPerPixelLightGet(weatherID, &sunMult, &ambMult);
		return std::make_tuple(sunMult, ambMult);
	}

	auto mge_setWeatherPPLLight(int weatherID, float sunMult, float ambMult) {
		mge::api->weatherPerPixelLightSet(weatherID, sunMult, ambMult);
	}

	//
	// Expose it all to lua.
	//

	bool isMGEAPIAvailable() {
		return mge::api != nullptr;
	}

	void bindMGEUtil() {
		auto stateHandle = LuaManager::getInstance().getThreadSafeStateHandle();
		sol::state& state = stateHandle.state;

		sol::table lua_mge = state["mge"];

		// General functions.
		lua_mge["getVersion"] = mge_getVersion;

		// Distant land functions.
		bindMGEDistantLandConfig();
		lua_mge["distantLandRenderConfig"] = mge_getDistantLandRenderConfig;
		lua_mge["reloadDistantLand"] = mge_reloadDistantLand;

		lua_mge["getLightingMode"] = mge_getLightingMode;
		lua_mge["setLightingMode"] = mge_setLightingMode;

		// Shader-related functions.
		lua_mge["shaders"] = sol::readonly_property(&mge_shaders);
		// TODO: API to add/remove shaders at runtime.

		// Camera functions.
		sol::table lua_cam = state.create_table();
		lua_mge["camera"] = lua_cam;

		lua_cam["shakeAcceleration"] = sol::property(&mge_getCameraShakeAcceleration, &mge_setCameraShakeAcceleration);
		lua_cam["shakeEnable"] = sol::property(&mge_getCameraShakeEnabled, &mge_setCameraShakeEnabled);
		lua_cam["shakeMagnitude"] = sol::property(&mge_getCameraShakeMagnitude, &mge_setCameraShakeMagnitude);
		lua_cam["stopZoom"] = mge_stopZoom;
		lua_cam["zoom"] = sol::property(&mge_getZoom, &mge_setZoom);
		lua_cam["zoomContinuous"] = mge_setZoomContinuous;
		lua_cam["zoomEnable"] = sol::property(&mge_getZoomEnabled, &mge_setZoomEnabled);
		lua_cam["zoomIn"] = mge_zoomIn;
		lua_cam["zoomOut"] = mge_zoomOut;

		// MGE XE weather functions.
		sol::table lua_weather = state.create_table();
		lua_mge["weather"] = lua_weather;

		lua_weather["scattering"] = sol::property(&mge_getWeatherScattering, &mge_setWeatherScattering);
		lua_weather["DLFog"] = sol::property(&mge_getWeatherDLFog, &mge_setWeatherDLFog);
		lua_weather["PPLLight"] = sol::property(&mge_getWeatherPPLLight, &mge_setWeatherPPLLight);

		// Macro functions with on-screen notifications.
		sol::table lua_macros = state.create_table();
		lua_mge["macros"] = lua_macros;

		lua_macros["decreaseFOV"] = mge::macros->DecreaseFOV;
		lua_macros["decreaseViewRange"] = mge::macros->DecreaseViewRange;
		lua_macros["decreaseZoom"] = mge::macros->DecreaseZoom;
		lua_macros["disableMusic"] = mge::macros->DisableMusic;
		lua_macros["haggleLess1"] = mge::macros->HaggleLess1;
		lua_macros["haggleLess10"] = mge::macros->HaggleLess10;
		lua_macros["haggleLess100"] = mge::macros->HaggleLess100;
		lua_macros["haggleLess1000"] = mge::macros->HaggleLess1000;
		lua_macros["haggleLess10000"] = mge::macros->HaggleLess10000;
		lua_macros["haggleMore1"] = mge::macros->HaggleMore1;
		lua_macros["haggleMore10"] = mge::macros->HaggleMore10;
		lua_macros["haggleMore100"] = mge::macros->HaggleMore100;
		lua_macros["haggleMore1000"] = mge::macros->HaggleMore1000;
		lua_macros["haggleMore10000"] = mge::macros->HaggleMore10000;
		lua_macros["increaseFOV"] = mge::macros->IncreaseFOV;
		lua_macros["increaseViewRange"] = mge::macros->IncreaseViewRange;
		lua_macros["increaseZoom"] = mge::macros->IncreaseZoom;
		lua_macros["moveBack3PCam"] = mge::macros->MoveBack3PCam;
		lua_macros["moveDown3PCam"] = mge::macros->MoveDown3PCam;
		lua_macros["moveForward3PCam"] = mge::macros->MoveForward3PCam;
		lua_macros["moveLeft3PCam"] = mge::macros->MoveLeft3PCam;
		lua_macros["moveRight3PCam"] = mge::macros->MoveRight3PCam;
		lua_macros["moveUp3PCam"] = mge::macros->MoveUp3PCam;
		lua_macros["nextTrack"] = mge::macros->NextTrack;
		lua_macros["resetEnableZoom"] = mge::macros->ResetEnableZoom;
		lua_macros["showLastMessage"] = mge::macros->ShowLastMessage;
		lua_macros["takeScreenshot"] = mge::macros->TakeScreenshot;
		lua_macros["toggleBlending"] = mge::macros->ToggleBlending;
		lua_macros["toggleCrosshair"] = mge::macros->ToggleCrosshair;
		lua_macros["toggleDistantLand"] = mge::macros->ToggleDistantLand;
		lua_macros["toggleFpsCounter"] = mge::macros->ToggleFpsCounter;
		lua_macros["toggleGrass"] = mge::macros->ToggleGrass;
		lua_macros["toggleLightingMode"] = mge::macros->ToggleLightingMode;
		lua_macros["toggleShaders"] = mge::macros->ToggleShaders;
		lua_macros["toggleShadows"] = mge::macros->ToggleShadows;
		lua_macros["toggleStatusText"] = mge::macros->ToggleStatusText;
		lua_macros["toggleTransparencyAA"] = mge::macros->ToggleTransparencyAA;
		lua_macros["toggleZoom"] = mge::macros->ToggleZoom;
	}
}