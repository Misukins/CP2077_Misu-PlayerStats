--[[ 
	Version: 1.0
	Creator: Amy (Misukins)
--]]

CLC = { 
    title 				= "Custom Player Stats",
	description 		= "Allows for customization of the player",
	version 			= "1.0",
	creator 			= "Misukins"
}

local IProps 			= { deltaTime = 0 }

local config 			= require("modules/utils/config")
curSettings 			= config.loadFile("Data/config.json")

Player_Carry_Capacity 		= curSettings.Player_Carry_Capacity
Player_Crit_Damage 			= curSettings.Player_Crit_Damage
Player_Crit_Chance 			= curSettings.Player_Crit_Chance
Player_Health_Bonus 		= curSettings.Player_Health_Bonus
Player_Armor_Bonus 			= curSettings.Player_Armor_Bonus
Player_Stamina_Bonus 		= curSettings.Player_Stamina_Bonus
Player_Fall_Bonus 			= curSettings.Player_Fall_Bonus
Player_Mitigation_Bonus 	= curSettings.Player_Mitigation_Bonus
Player_Thermal_Bonus 		= curSettings.Player_Thermal_Bonus
Player_Chemical_Bonus 		= curSettings.Player_Chemical_Bonus
Player_MitigationSTR_Bonus 	= curSettings.Player_MitigationSTR_Bonus
Player_ExpD_Bonus 			= curSettings.Player_ExpD_Bonus
Player_DOverTime_Bonus 		= curSettings.Player_DOverTime_Bonus
Player_Bleeding_Bonus 		= curSettings.Player_Bleeding_Bonus
Player_Burn_Bonus 			= curSettings.Player_Burn_Bonus
Player_Poison_Bonus 		= curSettings.Player_Poison_Bonus
Player_Shock_Bonus 			= curSettings.Player_Shock_Bonus
Player_Electrical_Bonus 	= curSettings.Player_Electrical_Bonus

function CLC:new()
    defaultSettings = {
		Player_Carry_Capacity 		= 0,
		Player_Crit_Damage 			= 0,
		Player_Crit_Chance 			= 0,
		Player_Health_Bonus 		= 0,
		Player_Armor_Bonus 			= 0,
		Player_Stamina_Bonus 		= 0,
		Player_Fall_Bonus 			= 0,
		Player_Mitigation_Bonus 	= 0,
		Player_Thermal_Bonus 		= 0,
		Player_Chemical_Bonus 		= 0,
		Player_MitigationSTR_Bonus  = 0,
		Player_Bleeding_Bonus 		= 0,
		Player_Burn_Bonus 			= 0,
		Player_Poison_Bonus 		= 0,
		Player_Shock_Bonus 			= 0,
		Player_Electrical_Bonus 	= 0,
		Player_ExpD_Bonus 			= 0,
		Player_DOverTime_Bonus 		= 0,
	}

	local nativeSettings = GetMod("nativeSettings")
    if not nativeSettings then
        print("[Custom Player Stats] Error: NativeSettings lib not found!")
        return
    end
    nativeSettings.addTab("/CLC", "Custom Player Stats")
	nativeSettings.addSubcategory("/CLC/Stats", "Stats")

	local fromMods = false
	Observe("PauseMenuGameController", "OnMenuItemActivated", function (_, _, target)
		fromMods = target:GetData().label == "Mods"
	end)

	Observe("gameuiMenuItemListGameController", "OnMenuItemActivated", function (_, _, target)
		fromMods = target:GetData().label == "Mods"
	end)

	Observe("SettingsMainGameController", "RequestClose", function ()
		if fromMods then
			reloadCLCMods()
			fromMods = false
		end
	end)

	--START
	nativeSettings.addRangeInt("/CLC/Stats", "Carry Capacity", "Determines the Carry Capacity.", 1, 3000, 1, curSettings.Player_Carry_Capacity, defaultSettings.Player_Carry_Capacity, function(value)
		curSettings.Player_Carry_Capacity = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Crit_Damage", "Determines the Player_Crit_Damage.", 1, 3000, 1, curSettings.Player_Crit_Damage, defaultSettings.Player_Crit_Damage, function(value)
		curSettings.Player_Crit_Damage = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Crit_Chance", "Determines the Player_Crit_Chance.", 1, 100, 1, curSettings.Player_Crit_Chance, defaultSettings.Player_Crit_Chance, function(value)
		curSettings.Player_Crit_Chance = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Health_Bonus", "Determines the Player_Health_Bonus.", 1, 3000, 1, curSettings.Player_Health_Bonus, defaultSettings.Player_Health_Bonus, function(value)
		curSettings.Player_Health_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Armor_Bonus", "Determines the Player_Armor_Bonus.", 1, 3000, 1, curSettings.Player_Armor_Bonus, defaultSettings.Player_Armor_Bonus, function(value)
		curSettings.Player_Armor_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Stamina_Bonus", "Determines the Player_Stamina_Bonus.", 1, 300, 1, curSettings.Player_Stamina_Bonus, defaultSettings.Player_Stamina_Bonus, function(value)
		curSettings.Player_Stamina_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Fall_Bonus", "Determines the Player_Fall_Bonus.", 1, 100, 1, curSettings.Player_Fall_Bonus, defaultSettings.Player_Fall_Bonus, function(value)
		curSettings.Player_Fall_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Mitigation_Bonus", "Determines the Player_Mitigation_Bonus.", 1, 100, 1, curSettings.Player_Mitigation_Bonus, defaultSettings.Player_Mitigation_Bonus, function(value)
		curSettings.Player_Mitigation_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Thermal_Bonus", "Determines the Player_Thermal_Bonus.", 1, 100, 1, curSettings.Player_Thermal_Bonus, defaultSettings.Player_Thermal_Bonus, function(value)
		curSettings.Player_Thermal_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Chemical_Bonus", "Determines the Player_Chemical_Bonus.", 1, 100, 1, curSettings.Player_Chemical_Bonus, defaultSettings.Player_Chemical_Bonus, function(value)
		curSettings.Player_Chemical_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_MitigationSTR_Bonus", "Determines the Player_MitigationSTR_Bonus.", 1, 3000, 1, curSettings.Player_MitigationSTR_Bonus, defaultSettings.Player_MitigationSTR_Bonus, function(value)
		curSettings.Player_MitigationSTR_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Bleeding_Bonus", "Determines the Player_Bleeding_Bonus.", 1, 100, 1, curSettings.Player_Bleeding_Bonus, defaultSettings.Player_Bleeding_Bonus, function(value)
		curSettings.Player_Bleeding_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Burn_Bonus", "Determines the Player_Burn_Bonus.", 1, 100, 1, curSettings.Player_Burn_Bonus, defaultSettings.Player_Burn_Bonus, function(value)
		curSettings.Player_Burn_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Poison_Bonus", "Determines the Player_Poison_Bonus.", 1, 100, 1, curSettings.Player_Poison_Bonus, defaultSettings.Player_Poison_Bonus, function(value)
		curSettings.Player_Poison_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Shock_Bonus", "Determines the Player_Shock_Bonus.", 1, 100, 1, curSettings.Player_Shock_Bonus, defaultSettings.Player_Shock_Bonus, function(value)
		curSettings.Player_Shock_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_Electrical_Bonus", "Determines the Player_Electrical_Bonus.", 1, 100, 1, curSettings.Player_Electrical_Bonus, defaultSettings.Player_Electrical_Bonus, function(value)
		curSettings.Player_Electrical_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_ExpD_Bonus", "Determines the Player_ExpD_Bonus.", 1, 100, 1, curSettings.Player_ExpD_Bonus, defaultSettings.Player_ExpD_Bonus, function(value)
		curSettings.Player_ExpD_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)
	nativeSettings.addRangeInt("/CLC/Stats", "Player_DOverTime_Bonus", "Determines the Player_DOverTime_Bonus.", 1, 100, 1, curSettings.Player_DOverTime_Bonus, defaultSettings.Player_DOverTime_Bonus, function(value)
		curSettings.Player_DOverTime_Bonus = value
		config.saveFile("Data/config.json", curSettings)
	end)

	registerForEvent("onUpdate", function(deltaTime)
		IProps.deltaTime = IProps.deltaTime + deltaTime
		if IProps.deltaTime > 1 then
			runUpdates()
			IProps.deltaTime = IProps.deltaTime - 1
		end
	end)
end

function refreshVariables()
	Player_Carry_Capacity 		= curSettings.Player_Carry_Capacity
	Player_Crit_Damage 			= curSettings.Player_Crit_Damage
	Player_Crit_Chance 			= curSettings.Player_Crit_Chance
	Player_Health_Bonus 		= curSettings.Player_Health_Bonus
	Player_Armor_Bonus 			= curSettings.Player_Armor_Bonus
	Player_Stamina_Bonus 		= curSettings.Player_Stamina_Bonus
	Player_Fall_Bonus 			= curSettings.Player_Fall_Bonus
	Player_Mitigation_Bonus 	= curSettings.Player_Mitigation_Bonus
	Player_Thermal_Bonus 		= curSettings.Player_Thermal_Bonus
	Player_Chemical_Bonus 		= curSettings.Player_Chemical_Bonus
	Player_MitigationSTR_Bonus 	= curSettings.Player_MitigationSTR_Bonus
	Player_ExpD_Bonus 			= curSettings.Player_ExpD_Bonus
	Player_DOverTime_Bonus 		= curSettings.Player_DOverTime_Bonus
	Player_Bleeding_Bonus 		= curSettings.Player_Bleeding_Bonus
	Player_Burn_Bonus 			= curSettings.Player_Burn_Bonus
	Player_Poison_Bonus 		= curSettings.Player_Poison_Bonus
	Player_Shock_Bonus 			= curSettings.Player_Shock_Bonus
	Player_Electrical_Bonus 	= curSettings.Player_Electrical_Bonus
end

function runUpdates(player)
	local player = Game.GetPlayer()
	if not player then
		return
	end
	refreshVariables()
end

function reloadCLCMods()
	refreshVariables()
	dofile("modules/Set Values.lua")
end

return CLC:new()
