--[[ 
	Version: 1.0
	Creator: Amy (Misukins)
--]]

MISUPS = { 
    title 				= "Custom Player Stats",
	description 		= "Allows for customization of the player",
	version 			= "1.0",
	creator 			= "Misukins"
}

function MISUPS:new()

	Player_Stats = {}
	createConstantStatModifier("PlayerCarryBonus",			"Additive", "BaseStats.CarryCapacity",				Player_Carry_Capacity)
	createConstantStatModifier("PlayerCritBonus",			"Additive", "BaseStats.CritChance",					Player_Crit_Chance)
	createConstantStatModifier("PlayerCritDamBonus",		"Additive", "BaseStats.CritDamage",					Player_Crit_Damage)
	createConstantStatModifier("PlayerHealthBonus", 		"Additive", "BaseStats.Health", 					Player_Health_Bonus)
	createConstantStatModifier("PlayerArmorBonus", 			"Additive", "BaseStats.Armor", 						Player_Armor_Bonus)
	createConstantStatModifier("PlayerStaminaBonus", 		"Additive", "BaseStats.Stamina", 					Player_Stamina_Bonus)
	createConstantStatModifier("PlayerFallBonus", 			"Additive", "BaseStats.FallDamageReduction", 		Player_Fall_Bonus)
	createConstantStatModifier("PlayerThermalBonus", 		"Additive", "BaseStats.ThermalResistance", 			Player_Thermal_Bonus)
	createConstantStatModifier("PlayerChemicalBonus", 		"Additive", "BaseStats.ChemicalResistance", 		Player_Chemical_Bonus)
	createConstantStatModifier("PlayerMitigationBonus", 	"Additive", "BaseStats.MitigationChance", 			Player_Mitigation_Bonus)
	createConstantStatModifier("PlayerMitigationSTRBonus", 	"Additive", "BaseStats.MitigationStrength", 		Player_MitigationSTR_Bonus)
	
	createConstantStatModifier("PlayerExplosionDBonus", 	"Additive", "BaseStats.ExplosionDamageReduction",	Player_ExpD_Bonus)			-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("PlayerDOverTimeBonus", 		"Additive", "BaseStats.DamageOverTimeReduction",	Player_DOverTime_Bonus)		-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("PlayerElectricalBonus", 	"Additive", "BaseStats.ElectricalResistance", 		Player_Electrical_Bonus)	-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("PlayerBleedingBonus", 		"Additive", "BaseStats.BleedingChance", 			Player_Bleeding_Bonus)		-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("PlayerBurnBonus", 			"Additive", "BaseStats.BurnChance", 				Player_Burn_Bonus)			-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("PlayerPoisonBonus", 		"Additive", "BaseStats.PoisonChance", 				Player_Poison_Bonus)		-- FIX: NOT WORKING ꭙ
	createConstantStatModifier("PlayerShockBonus", 			"Additive", "BaseStats.ShockChance", 				Player_Shock_Bonus)			-- FIX: NOT WORKING ꭙ

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
	table.insert(Player_Stats, "PlayerDOverTimeBonus")
	table.insert(Player_Stats, "PlayerBleedingBonus")
	table.insert(Player_Stats, "PlayerBurnBonus")
	table.insert(Player_Stats, "PlayerPoisonBonus")
	table.insert(Player_Stats, "PlayerShockBonus")
	table.insert(Player_Stats, "PlayerElectricalBonus")

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
