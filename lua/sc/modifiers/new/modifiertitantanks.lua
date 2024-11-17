--Increase the spawns of Titan Bulldozers
ModifierTitanTanks = ModifierTitanTanks or class(BaseModifier)
ModifierTitanTanks._type = "ModifierTitanTanks"
ModifierTitanTanks.name_id = "none"
ModifierTitanTanks.desc_id = "menu_cs_modifier_titandozer"

ModifierTitanTanks.default_value = "spawn_chance"
ModifierTitanTanks.tanks = {
	Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
	Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2"),
	Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3"),
	Idstring("units/payday2/characters/ene_bulldozer_1_sc/ene_bulldozer_1_sc"),
	Idstring("units/payday2/characters/ene_bulldozer_2_sc/ene_bulldozer_2_sc"),
	Idstring("units/payday2/characters/ene_bulldozer_3_sc/ene_bulldozer_3_sc"),
	Idstring("units/pd2_mod_bravo/characters/ene_bravo_bulldozer/ene_bravo_bulldozer"),
	Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun_classic/ene_bulldozer_minigun_classic"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_2/ene_zeal_bulldozer_2"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_3/ene_zeal_bulldozer_3"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_2_sc/ene_zeal_bulldozer_2_sc"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_3_sc/ene_zeal_bulldozer_3_sc"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_bulldozer_minigun/ene_bulldozer_minigun"),
	Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun"),
	Idstring("units/pd2_mod_lapd/characters/ene_bulldozer_3/ene_bulldozer_3"),
	Idstring("units/pd2_mod_nypd/characters/ene_bulldozer_1/ene_bulldozer_1"),
	Idstring("units/pd2_mod_nypd/characters/ene_bulldozer_2/ene_bulldozer_2"),
	Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_2/ene_murkywater_bulldozer_2"),
	Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_3/ene_murkywater_bulldozer_3"),
	Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4"),
	Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_r870/ene_murky_fbi_tank_r870"),
	Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_saiga/ene_murky_fbi_tank_saiga"),
	Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_m249/ene_murky_fbi_tank_m249"),
	Idstring("units/pd2_mod_omnia/characters/ene_bulldozer_1/ene_bulldozer_1"),
	Idstring("units/pd2_mod_omnia/characters/ene_bulldozer_2/ene_bulldozer_2"),
	Idstring("units/pd2_mod_omnia/characters/ene_bulldozer_3/ene_bulldozer_3"),
	Idstring("units/pd2_mod_omnia/characters/ene_bulldozer_minigun/ene_bulldozer_minigun"),
	Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_benelli/ene_murky_fbi_tank_benelli"),
	Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_1/ene_murkywater_bulldozer_1")
}

ModifierTitanTanks.tank_ru = {
	Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870"),
	Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
	Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg"),
	Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_1/ene_bulldozer_1"),
	Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_2/ene_bulldozer_2"),
	Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_3/ene_bulldozer_3"),
	Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_mini/ene_bulldozer_mini"),
	Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_r870/ene_swat_dozer_policia_federale_r870"),
	Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_saiga/ene_swat_dozer_policia_federale_saiga"),
	Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249"),
	Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_1/ene_bulldozer_1"),
	Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_2/ene_bulldozer_2"),
	Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_3/ene_bulldozer_3"),
	Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_minigun/ene_bulldozer_minigun"),
}

ModifierTitanTanks.tank_hvh = {
	Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_1/ene_bulldozer_hvh_1"),
	Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_2/ene_bulldozer_hvh_2"),
	Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3"),
	Idstring("units/pd2_mod_halloween/characters/ene_bulldozer_1/ene_bulldozer_1"),
	Idstring("units/pd2_mod_halloween/characters/ene_bulldozer_2/ene_bulldozer_2"),
	Idstring("units/pd2_mod_halloween/characters/ene_bulldozer_3/ene_bulldozer_3"),
	Idstring("units/pd2_mod_halloween/characters/ene_zeal_bulldozer_2/ene_zeal_bulldozer_2"),
	Idstring("units/pd2_mod_halloween/characters/ene_zeal_bulldozer_3/ene_zeal_bulldozer_3"),
	Idstring("units/pd2_mod_halloween/characters/ene_zeal_bulldozer/ene_zeal_bulldozer")
}

function ModifierTitanTanks:modify_value(id, value)
	if id == "GroupAIStateBesiege:SpawningUnit" then
		local is_tank = table.contains(ModifierTitanTanks.tanks, value)
		local is_reapertank = table.contains(ModifierTitanTanks.tank_ru, value)
		local is_zombietank = table.contains(ModifierTitanTanks.tank_hvh, value)
		
		if is_tank and math.random(0,100) < 20 then
			return Idstring("units/pd2_dlc_vip/characters/ene_vip_2_assault/ene_vip_2_assault")
		elseif is_reapertank and math.random(0,100) < 20 then
			return Idstring("units/pd2_mod_reapers/characters/ene_vip_2/ene_vip_2")
		elseif is_zombietank and math.random(0,100) < 20 then
			return Idstring("units/payday2/characters/ene_bulldozer_4/ene_bulldozer_4")
		end
	end
	return value
end