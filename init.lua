--[[ 
	Version: 1.0
	Creator: Amy (Misukins)
	© Misukins You can change this and share but give me some credit ok?
--]]

MISUPS = { 
    description = "Allows for customization of the player"
}

function MISUPS:new()
    registerForEvent("onInit", function()
	-- FEEL FREE TO CHANGE THESE
	Player_Carry_Capacity 		= 4000 		-- !TEMP
	Player_Crit_Damage 			= 1000 		-- !TEMP
	Player_Crit_Chance 			= 100 		-- !TEMP

	Player_Health_Bonus 		= 3000 		-- !TEMP
	Player_Armor_Bonus 			= 3000 		-- !TEMP
	Player_Stamina_Bonus 		= 100 		-- !TEMP

	Player_Fall_Bonus 			= 100 -- (0-100%) -- !TEMP
	Player_Mitigation_Bonus 	= 100 -- (0-100%) -- !TEMP
	Player_Thermal_Bonus 		= 100 -- (0-100%) -- !TEMP
	Player_Chemical_Bonus 		= 100 -- (0-100%) -- !TEMP
	Player_MitigationSTR_Bonus 	= 100 -- (0-100%) -- !TEMP
	-- STOP EDITING HERE PLZ :3

	--neu testing
	Player_Bleeding_Bonus 	= 100 		-- !TEMP
	Player_Burn_Bonus 		= 100 		-- !TEMP
	Player_Poison_Bonus 	= 100 		-- !TEMP
	Player_Shock_Bonus 		= 100 		-- !TEMP
	Player_Electrical_Bonus = 100 		-- !TEMP

	TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline11.value", Player_Crit_Chance) 		-- DO NOT CHANGE √
	TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline12.value", Player_Crit_Damage) 		-- DO NOT CHANGE √
	TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline10.value", Player_Carry_Capacity) 	-- DO NOT CHANGE √

	Player_Stats = {}
	createConstantStatModifier("PlayerHealthBonus", "Additive", "BaseStats.Health", Player_Health_Bonus)							-- DO NOT CHANGE √
	createConstantStatModifier("PlayerArmorBonus", "Additive", "BaseStats.Armor", Player_Armor_Bonus)								-- DO NOT CHANGE √
	createConstantStatModifier("PlayerStaminaBonus", "Additive", "BaseStats.Stamina", Player_Stamina_Bonus)							-- DO NOT CHANGE √
	createConstantStatModifier("PlayerFallBonus", "Additive", "BaseStats.FallDamageReduction", Player_Fall_Bonus)					-- DO NOT CHANGE √
	createConstantStatModifier("PlayerThermalBonus", "Additive", "BaseStats.ThermalResistance", Player_Thermal_Bonus)				-- DO NOT CHANGE √
	createConstantStatModifier("PlayerChemicalBonus", "Additive", "BaseStats.ChemicalResistance", Player_Chemical_Bonus)			-- DO NOT CHANGE √
	createConstantStatModifier("PlayerMitigationBonus", "Additive", "BaseStats.MitigationChance", Player_Mitigation_Bonus)			-- DO NOT CHANGE √
	createConstantStatModifier("PlayerMitigationSTRBonus", "Additive", "BaseStats.MitigationStrength", Player_MitigationSTR_Bonus)	-- DO NOT CHANGE √

	-- neu testing
	createConstantStatModifier("PlayerBleedingBonus", "Additive", "BaseStats.BleedingChance", Player_Bleeding_Bonus)			-- !NOTWORKING
	createConstantStatModifier("PlayerBurnBonus", "Additive", "BaseStats.BurnChance", Player_Burn_Bonus)						-- !NOTWORKING
	createConstantStatModifier("PlayerPoisonBonus", "Additive", "BaseStats.PoisonChance", Player_Poison_Bonus)					-- !NOTWORKING
	createConstantStatModifier("PlayerShockBonus", "Additive", "BaseStats.ShockChance", Player_Shock_Bonus)						-- !NOTWORKING
	createConstantStatModifier("PlayerElectricalBonus", "Additive", "BaseStats.ElectricalResistance", Player_Electrical_Bonus)	-- !NOTWORKING

	for i =0, 68 do
		table.insert(Player_Stats, "Character.Player_Primary_Stats_Base_inline"..i)
	end
	table.insert(Player_Stats, "PlayerHealthBonus")
	table.insert(Player_Stats, "PlayerArmorBonus")
	table.insert(Player_Stats, "PlayerStaminaBonus")
	table.insert(Player_Stats, "PlayerFallBonus")
	table.insert(Player_Stats, "PlayerMitigationBonus")
	table.insert(Player_Stats, "PlayerThermalBonus")
	table.insert(Player_Stats, "PlayerChemicalBonus")
	table.insert(Player_Stats, "PlayerMitigationSTRBonus")

	--neu testing
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
