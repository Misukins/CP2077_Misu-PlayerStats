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

function CLC:new()

	TweakDB:SetFlat("CLC.PlayerCarryBonus", 		Player_Carry_Capacity, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerCritBonus", 			Player_Crit_Chance, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerCritDamBonus", 		Player_Crit_Damage, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerHealthBonus", 		Player_Health_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerArmorBonus", 		Player_Armor_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerStaminaBonus", 		Player_Stamina_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerFallBonus", 			Player_Fall_Bonus, 				'Int32')
	TweakDB:SetFlat("CLC.PlayerThermalBonus", 		Player_Thermal_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerChemicalBonus", 		Player_Chemical_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerMitigationBonus", 	Player_Mitigation_Bonus, 		'Int32')
	TweakDB:SetFlat("CLC.PlayerMitigationSTRBonus", Player_MitigationSTR_Bonus, 	'Int32')
	TweakDB:SetFlat("CLC.PlayerExplosionDBonus", 	Player_ExpD_Bonus, 				'Int32')
	TweakDB:SetFlat("CLC.PlayerDOverTimeBonus", 	Player_DOverTime_Bonus, 		'Int32')
	TweakDB:SetFlat("CLC.PlayerElectricalBonus", 	Player_Electrical_Bonus, 		'Int32')
	TweakDB:SetFlat("CLC.PlayerBleedingBonus", 		Player_Bleeding_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerBurnBonus", 			Player_Burn_Bonus, 				'Int32')
	TweakDB:SetFlat("CLC.PlayerPoisonBonus", 		Player_Poison_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.PlayerShockBonus", 		Player_Shock_Bonus, 			'Int32')

end

return CLC:new()
