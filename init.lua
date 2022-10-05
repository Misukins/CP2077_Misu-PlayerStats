--[[ 
	Version: 1.0
	Creator: Amy (Misukins)
--]]

CLC = { 
    title 				= "Custom Player Stats",
	description 		= "Allows for customization of the player",
	version 			= "1.0",
	creator 			= "Misukins",
	copy 				= "© Misukins You can change this and share but give me some credit ok?"
}

function CLC:new()

    registerForEvent("onInit", function()
		dofile("modules/Native Settings Integration.lua")
		dofile("modules/Set Values.lua")
		dofile("modules/Load Functions.lua")

		print("Custom Level Cap fully loaded!!")
    end)

end

return CLC:new()

--[[
MISUPS = { 
    title 				= "Custom Player Stats",
	description 		= "Allows for customization of the player",
	version 			= "1.0",
	creator 			= "Misukins",
	copy 				= "© Misukins You can change this and share but give me some credit ok?"
}

function MISUPS:new()
    registerForEvent("onInit", function()
	-- FEEL FREE TO CHANGE THESE
	Player_Carry_Capacity 		= 500
	Player_Crit_Damage 			= 50
	Player_Crit_Chance 			= 40

	Player_Health_Bonus 		= 250
	Player_Armor_Bonus 			= 100
	Player_Stamina_Bonus 		= 5

	Player_Fall_Bonus 			= 20 	-- (0-100%)
	Player_Mitigation_Bonus 	= 10 	-- (0-100%)
	Player_Thermal_Bonus 		= 20 	-- (0-100%)
	Player_Chemical_Bonus 		= 20 	-- (0-100%)
	Player_MitigationSTR_Bonus 	= 5 	-- (0-100%)

	--Player_ExpD_Bonus 			= 100 -- (0-100%) -- !TEMP
	--Player_DOverTime_Bonus 		= 100 -- (0-100%) -- !TEMP
	--Player_Bleeding_Bonus 		= 100 -- (0-100%) -- !TEMP
	--Player_Burn_Bonus 			= 100 -- (0-100%) -- !TEMP
	--Player_Poison_Bonus 		= 100 -- (0-100%) -- !TEMP
	--Player_Shock_Bonus 			= 100 -- (0-100%) -- !TEMP
	--Player_Electrical_Bonus 	= 100 -- (0-100%) -- !TEMP

	-- STOP EDITING HERE PLZ :3

	Player_Stats = {}
	createConstantStatModifier("PlayerCarryBonus",			"Additive", "BaseStats.CarryCapacity",				Player_Carry_Capacity)		-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerCritBonus",			"Additive", "BaseStats.CritChance",					Player_Crit_Chance)			-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerCritDamBonus",		"Additive", "BaseStats.CritDamage",					Player_Crit_Damage)			-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerHealthBonus", 		"Additive", "BaseStats.Health", 					Player_Health_Bonus)		-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerArmorBonus", 			"Additive", "BaseStats.Armor", 						Player_Armor_Bonus)			-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerStaminaBonus", 		"Additive", "BaseStats.Stamina", 					Player_Stamina_Bonus)		-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerFallBonus", 			"Additive", "BaseStats.FallDamageReduction", 		Player_Fall_Bonus)			-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerThermalBonus", 		"Additive", "BaseStats.ThermalResistance", 			Player_Thermal_Bonus)		-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerChemicalBonus", 		"Additive", "BaseStats.ChemicalResistance", 		Player_Chemical_Bonus)		-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerMitigationBonus", 	"Additive", "BaseStats.MitigationChance", 			Player_Mitigation_Bonus)	-- NOTE: DO NOT CHANGE √
	createConstantStatModifier("PlayerMitigationSTRBonus", 	"Additive", "BaseStats.MitigationStrength", 		Player_MitigationSTR_Bonus)	-- NOTE: DO NOT CHANGE √

	--createConstantStatModifier("PlayerExplosionDBonus", 	"Additive", "BaseStats.ExplosionDamageReduction",	Player_ExpD_Bonus)			-- FIX: NOT WORKING ꭙ
	--createConstantStatModifier("PlayerDOverTimeBonus", 		"Additive", "BaseStats.DamageOverTimeReduction",	Player_DOverTime_Bonus)		-- FIX: NOT WORKING ꭙ
	--createConstantStatModifier("PlayerElectricalBonus", 	"Additive", "BaseStats.ElectricalResistance", 		Player_Electrical_Bonus)	-- FIX: NOT WORKING ꭙ
	--createConstantStatModifier("PlayerBleedingBonus", 		"Additive", "BaseStats.BleedingChance", 			Player_Bleeding_Bonus)		-- FIX: NOT WORKING ꭙ
	--createConstantStatModifier("PlayerBurnBonus", 			"Additive", "BaseStats.BurnChance", 				Player_Burn_Bonus)			-- FIX: NOT WORKING ꭙ
	--createConstantStatModifier("PlayerPoisonBonus", 		"Additive", "BaseStats.PoisonChance", 				Player_Poison_Bonus)		-- FIX: NOT WORKING ꭙ
	--createConstantStatModifier("PlayerShockBonus", 			"Additive", "BaseStats.ShockChance", 				Player_Shock_Bonus)			-- FIX: NOT WORKING ꭙ

	for i = 0, 99 do
		table.insert(Player_Stats, "Character.Player_Primary_Stats_Base_inline".. i)
	end
	table.insert(Player_Stats, "PlayerCarryBonus")
	table.insert(Player_Stats, "PlayerCritBonus")
	table.insert(Player_Stats, "PlayerCritDamBonus")
	table.insert(Player_Stats, "PlayerHealthBonus")
	table.insert(Player_Stats, "PlayerArmorBonus")
	table.insert(Player_Stats, "PlayerStaminaBonus")
	table.insert(Player_Stats, "PlayerFallBonus")
	table.insert(Player_Stats, "PlayerMitigationBonus")
	table.insert(Player_Stats, "PlayerThermalBonus")
	table.insert(Player_Stats, "PlayerChemicalBonus")
	table.insert(Player_Stats, "PlayerMitigationSTRBonus")

	--table.insert(Player_Stats, "PlayerDOverTimeBonus")
	--table.insert(Player_Stats, "PlayerBleedingBonus")
	--table.insert(Player_Stats, "PlayerBurnBonus")
	--table.insert(Player_Stats, "PlayerPoisonBonus")
	--table.insert(Player_Stats, "PlayerShockBonus")
	--table.insert(Player_Stats, "PlayerElectricalBonus")

	TweakDB:SetFlat("Character.Player_Primary_Stats_Base.statModifiers", Player_Stats)
    end)

	function createConstantStatModifier(recordName, modifierType, statType, value)
		TweakDB:CreateRecord(recordName, "gamedataConstantStatModifier_Record")
		TweakDB:SetFlat(recordName..".modifierType", modifierType)
		TweakDB:SetFlat(recordName..".statType", statType)
		TweakDB:SetFlat(recordName..".value", value)
	end
end

return MISUPS:new()
--]]