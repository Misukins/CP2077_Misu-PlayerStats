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

Player_Stats = {}

function CLC:new()

	createConstantStatModifier("Player_Carry_Capacity",			"Additive", "BaseStats.CarryCapacity",				Player_Carry_Capacity)
	createConstantStatModifier("Player_Crit_Chance",			"Additive", "BaseStats.CritChance",					Player_Crit_Chance)
	createConstantStatModifier("Player_Crit_Damage",			"Additive", "BaseStats.CritDamage",					Player_Crit_Damage)
	createConstantStatModifier("Player_Health_Bonus", 			"Additive", "BaseStats.Health", 					Player_Health_Bonus)
	createConstantStatModifier("Player_Armor_Bonus", 			"Additive", "BaseStats.Armor", 						Player_Armor_Bonus)
	createConstantStatModifier("Player_Stamina_Bonus", 			"Additive", "BaseStats.Stamina", 					Player_Stamina_Bonus)
	createConstantStatModifier("Player_Fall_Bonus", 			"Additive", "BaseStats.FallDamageReduction", 		Player_Fall_Bonus)
	createConstantStatModifier("Player_Thermal_Bonus", 			"Additive", "BaseStats.ThermalResistance", 			Player_Thermal_Bonus)
	createConstantStatModifier("Player_Chemical_Bonus", 		"Additive", "BaseStats.ChemicalResistance", 		Player_Chemical_Bonus)
	createConstantStatModifier("Player_Mitigation_Bonus", 		"Additive", "BaseStats.MitigationChance", 			Player_Mitigation_Bonus)
	createConstantStatModifier("Player_MitigationSTR_Bonus", 	"Additive", "BaseStats.MitigationStrength", 		Player_MitigationSTR_Bonus)
	createConstantStatModifier("Player_ExpD_Bonus", 			"Additive", "BaseStats.ExplosionDamageReduction",	Player_ExpD_Bonus)			-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("Player_DOverTime_Bonus", 		"Additive", "BaseStats.DamageOverTimeReduction",	Player_DOverTime_Bonus)		-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("Player_Electrical_Bonus", 		"Additive", "BaseStats.ElectricalResistance", 		Player_Electrical_Bonus)	-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("Player_Bleeding_Bonus", 		"Additive", "BaseStats.BleedingChance", 			Player_Bleeding_Bonus)		-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("Player_Burn_Bonus", 			"Additive", "BaseStats.BurnChance", 				Player_Burn_Bonus)			-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("Player_Poison_Bonus", 			"Additive", "BaseStats.PoisonChance", 				Player_Poison_Bonus)		-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("Player_Shock_Bonus", 			"Additive", "BaseStats.ShockChance", 				Player_Shock_Bonus)			-- FIX: NOT WORKING ꭙ

	for i = 0, 99 do
		table.insert(Player_Stats, "Character.Player_Primary_Stats_Base_inline".. i)
	end
	table.insert(Player_Stats, "Player_Carry_Capacity")
	table.insert(Player_Stats, "Player_Crit_Chance")
	table.insert(Player_Stats, "Player_Crit_Damage")
	table.insert(Player_Stats, "Player_Health_Bonus")
	table.insert(Player_Stats, "Player_Armor_Bonus")
	table.insert(Player_Stats, "Player_Stamina_Bonus")
	table.insert(Player_Stats, "Player_Fall_Bonus")
	table.insert(Player_Stats, "Player_Thermal_Bonus")
	table.insert(Player_Stats, "Player_Chemical_Bonus")
	table.insert(Player_Stats, "Player_Mitigation_Bonus")
	table.insert(Player_Stats, "Player_MitigationSTR_Bonus")
	table.insert(Player_Stats, "Player_ExpD_Bonus")
	table.insert(Player_Stats, "Player_DOverTime_Bonus")
	table.insert(Player_Stats, "Player_Electrical_Bonus")
	table.insert(Player_Stats, "Player_Bleeding_Bonus")
	table.insert(Player_Stats, "Player_Burn_Bonus")
	table.insert(Player_Stats, "Player_Poison_Bonus")
	table.insert(Player_Stats, "Player_Shock_Bonus")

	TweakDB:SetFlat("Character.Player_Primary_Stats_Base.statModifiers", Player_Stats)
    end)

	function createConstantStatModifier(recordName, modifierType, statType, value)
		TweakDB:CreateRecord(recordName, "gamedataConstantStatModifier_Record")
		TweakDB:SetFlat(recordName..".modifierType", modifierType)
		TweakDB:SetFlat(recordName..".statType", statType)
		TweakDB:SetFlat(recordName..".value", value)
	end

end

return CLC:new()
