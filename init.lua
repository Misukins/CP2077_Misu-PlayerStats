MISUPS = { 
    description = "Allows for customization of the player"
}

function MISUPS:new()

    registerForEvent("onInit", function() 
	Player_Carry_Capacity = 4000
	Player_Crit_Damage = 1000
	Player_Crit_Chance = 100

	Player_Health_Bonus = 3000
	Player_Stamina_Bonus = 100

	--Player_testing = 10000

	TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline11.value", Player_Crit_Chance) 		-- DO NOT CHANGE
	TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline12.value", Player_Crit_Damage) 		-- DO NOT CHANGE
	TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline10.value", Player_Carry_Capacity) 	-- DO NOT CHANGE


	--TweakDB:SetFlat("Character.Player_Primary_Stats_Base_inline1", Player_testing) -- JUST for looking mone stats

	--[[ TODO more stats
		Player_Primary_Stats_Base_inline8  == armor 
	]]
	Player_Stats = {}
	createConstantStatModifier("PlayerHealthBonus", "Additive", "BaseStats.Health", Player_Health_Bonus)	-- DO NOT CHANGE
	createConstantStatModifier("PlayerStaminaBonus", "Additive", "BaseStats.Stamina", Player_Stamina_Bonus)	-- DO NOT CHANGE

	for i =0, 68 do
		table.insert(Player_Stats, "Character.Player_Primary_Stats_Base_inline"..i)
	end
	table.insert(Player_Stats, "PlayerHealthBonus")
	table.insert(Player_Stats, "PlayerStaminaBonus")

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
