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

	TweakDB:SetFlat("CLC.Player_Carry_Capacity", 		Player_Carry_Capacity, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Crit_Chance", 			Player_Crit_Chance, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Crit_Damage", 			Player_Crit_Damage, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Health_Bonus", 			Player_Health_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Armor_Bonus", 			Player_Armor_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Stamina_Bonus", 		Player_Stamina_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Fall_Bonus", 			Player_Fall_Bonus, 				'Int32')
	TweakDB:SetFlat("CLC.Player_Thermal_Bonus", 		Player_Thermal_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Chemical_Bonus", 		Player_Chemical_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Mitigation_Bonus", 		Player_Mitigation_Bonus, 		'Int32')
	TweakDB:SetFlat("CLC.Player_MitigationSTR_Bonus", 	Player_MitigationSTR_Bonus, 	'Int32')
	TweakDB:SetFlat("CLC.Player_ExpD_Bonus", 			Player_ExpD_Bonus, 				'Int32')
	TweakDB:SetFlat("CLC.Player_DOverTime_Bonus", 		Player_DOverTime_Bonus, 		'Int32')
	TweakDB:SetFlat("CLC.Player_Electrical_Bonus", 		Player_Electrical_Bonus, 		'Int32')
	TweakDB:SetFlat("CLC.Player_Bleeding_Bonus", 		Player_Bleeding_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Burn_Bonus", 			Player_Burn_Bonus, 				'Int32')
	TweakDB:SetFlat("CLC.Player_Poison_Bonus", 			Player_Poison_Bonus, 			'Int32')
	TweakDB:SetFlat("CLC.Player_Shock_Bonus", 			Player_Shock_Bonus, 			'Int32')

end

return CLC:new()
