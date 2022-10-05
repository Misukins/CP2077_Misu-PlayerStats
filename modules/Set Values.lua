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

	TweakDB:SetFlat("MISUPS.PlayerCarryBonus", 			Player_Carry_Capacity, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerCritBonus", 			Player_Crit_Chance, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerCritDamBonus", 		Player_Crit_Damage, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerHealthBonus", 		Player_Health_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerArmorBonus", 			Player_Armor_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerStaminaBonus", 		Player_Stamina_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerFallBonus", 			Player_Fall_Bonus, 				'Int32')
	TweakDB:SetFlat("MISUPS.PlayerThermalBonus", 		Player_Thermal_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerChemicalBonus", 		Player_Chemical_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerMitigationBonus", 	Player_Mitigation_Bonus, 		'Int32')
	TweakDB:SetFlat("MISUPS.PlayerMitigationSTRBonus", 	Player_MitigationSTR_Bonus, 	'Int32')
	TweakDB:SetFlat("MISUPS.PlayerExplosionDBonus", 	Player_ExpD_Bonus, 				'Int32')
	TweakDB:SetFlat("MISUPS.PlayerDOverTimeBonus", 		Player_DOverTime_Bonus, 		'Int32')
	TweakDB:SetFlat("MISUPS.PlayerElectricalBonus", 	Player_Electrical_Bonus, 		'Int32')
	TweakDB:SetFlat("MISUPS.PlayerBleedingBonus", 		Player_Bleeding_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerBurnBonus", 			Player_Burn_Bonus, 				'Int32')
	TweakDB:SetFlat("MISUPS.PlayerPoisonBonus", 		Player_Poison_Bonus, 			'Int32')
	TweakDB:SetFlat("MISUPS.PlayerShockBonus", 			Player_Shock_Bonus, 			'Int32')

end

return MISUPS:new()
