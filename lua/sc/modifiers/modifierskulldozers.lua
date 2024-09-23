ModifierSkulldozers.default_value = "spawn_chance"

--More Skulldozers
function ModifierSkulldozers:init(data)
	ModifierSkulldozers.super.init(self, data)
	
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local difficulty_index = tweak_data:difficulty_to_index(difficulty)
	
	local unit_types = tweak_data.group_ai.unit_categories.FBI_tank.unit_types
	local unit_types_black = tweak_data.group_ai.unit_categories.BLACK_tank.unit_types

	local vanilla_skulldozer = Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
	local vanilla_zealskull = Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer")
	
	if difficulty_index <= 7 then 
		table.insert(unit_types.america, Idstring("units/payday2/characters/ene_bulldozer_3_sc/ene_bulldozer_3_sc"))
		table.insert(unit_types.russia, Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types.zombie, Idstring("units/pd2_mod_halloween/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types.federales, Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types.murkywater, Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_m249/ene_murky_fbi_tank_m249"))
		table.insert(unit_types.nypd, Idstring("units/payday2/characters/ene_bulldozer_3_sc/ene_bulldozer_3_sc"))
		table.insert(unit_types.lapd, Idstring("units/pd2_mod_lapd/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types.fbi, Idstring("units/pd2_mod_lapd/characters/ene_bulldozer_3/ene_bulldozer_3"))
	
		table.insert(unit_types_black.america, Idstring("units/payday2/characters/ene_bulldozer_3_sc/ene_bulldozer_3_sc"))
		table.insert(unit_types_black.russia, Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types_black.zombie, Idstring("units/pd2_mod_halloween/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types_black.federales, Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types_black.murkywater, Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_m249/ene_murky_fbi_tank_m249"))
		table.insert(unit_types_black.nypd, Idstring("units/payday2/characters/ene_bulldozer_3_sc/ene_bulldozer_3_sc"))
		table.insert(unit_types_black.lapd, Idstring("units/pd2_mod_lapd/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types_black.fbi, Idstring("units/pd2_mod_lapd/characters/ene_bulldozer_3/ene_bulldozer_3"))

		table.insert(unit_types.america, vanilla_skulldozer)
		table.insert(unit_types.russia, Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg"))
		table.insert(unit_types.zombie, Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3"))
		table.insert(unit_types.federales, Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249"))
		table.insert(unit_types.murkywater, Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4"))
		table.insert(unit_types.nypd, vanilla_skulldozer)
		table.insert(unit_types.lapd, vanilla_skulldozer)
		table.insert(unit_types.fbi, vanilla_skulldozer)

		table.insert(unit_types_black.america, vanilla_skulldozer)
		table.insert(unit_types_black.russia, Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg"))
		table.insert(unit_types_black.zombie, Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3"))
		table.insert(unit_types_black.federales, Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249"))
		table.insert(unit_types_black.murkywater, Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4"))
		table.insert(unit_types_black.nypd, vanilla_skulldozer)
		table.insert(unit_types_black.lapd, vanilla_skulldozer)
		table.insert(unit_types_black.fbi, vanilla_skulldozer)
	else	
		table.insert(unit_types.america, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
		table.insert(unit_types.russia, Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types.zombie, Idstring("units/pd2_mod_halloween/characters/ene_zeal_bulldozer/ene_zeal_bulldozer"))
		table.insert(unit_types.federales, Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types.murkywater, Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_m249/ene_murky_fbi_tank_m249"))
		table.insert(unit_types.nypd, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
		table.insert(unit_types.lapd, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
		table.insert(unit_types.fbi, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
	
		table.insert(unit_types_black.america, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
		table.insert(unit_types_black.russia, Idstring("units/pd2_mod_reapers/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types_black.zombie, Idstring("units/pd2_mod_halloween/characters/ene_zeal_bulldozer/ene_zeal_bulldozer"))
		table.insert(unit_types_black.federales, Idstring("units/pd2_dlc_bex/characters/ene_bulldozer_3/ene_bulldozer_3"))
		table.insert(unit_types_black.murkywater, Idstring("units/pd2_mod_sharks/characters/ene_murky_fbi_tank_m249/ene_murky_fbi_tank_m249"))
		table.insert(unit_types_black.nypd, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
		table.insert(unit_types_black.lapd, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))
		table.insert(unit_types_black.fbi, Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_sc/ene_zeal_bulldozer_sc"))

		table.insert(unit_types.america, vanilla_zealskull)
		table.insert(unit_types.russia, Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg"))
		table.insert(unit_types.zombie, Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3"))
		table.insert(unit_types.federales, Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249"))
		table.insert(unit_types.murkywater, Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4"))
		table.insert(unit_types.nypd, vanilla_zealskull)
		table.insert(unit_types.lapd, vanilla_zealskull)
		table.insert(unit_types.fbi, vanilla_zealskull)
	
		table.insert(unit_types_black.america, vanilla_zealskull)
		table.insert(unit_types_black.russia, Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg"))
		table.insert(unit_types_black.zombie, Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3"))
		table.insert(unit_types_black.federales, Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249"))
		table.insert(unit_types_black.murkywater, Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4"))
		table.insert(unit_types_black.nypd, vanilla_zealskull)
		table.insert(unit_types_black.lapd, vanilla_zealskull)
		table.insert(unit_types_black.fbi, vanilla_zealskull)
	end	
end

function ModifierSkulldozers:modify_value(id, value)
end