--Only spawn special units
--This is a really sloppy way of doing this, probably adding a few meatballs to this spagetti
MutatorOopsAllSpecials = MutatorOopsAllSpecials or class(BaseMutator)
MutatorOopsAllSpecials._type = "MutatorOopsAllSpecials"
MutatorOopsAllSpecials.name_id = "mutator_onlyspecials"
MutatorOopsAllSpecials.desc_id = "mutator_onlyspecials_desc"
MutatorOopsAllSpecials.reductions = {
	money = 0,
	exp = 0
}
MutatorOopsAllSpecials.disables_achievements = false
MutatorOopsAllSpecials.categories = {
	"enemies"
}
MutatorOopsAllSpecials.incompatibility_tags = {
	"replaces_units"
}
MutatorOopsAllSpecials.icon_coords = {
	6,
	1
}

function MutatorOopsAllSpecials:setup()
	self._groups = self._groups or {}
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local difficulty_index = tweak_data:difficulty_to_index(difficulty)

	if not PackageManager:loaded("packages/miscassetsmutators") then
		PackageManager:load("packages/miscassetsmutators")
	end

	self:modify_unit_categories(tweak_data.group_ai, difficulty_index)
end

local access_type_all = {
	acrobatic = true,
	walk = true
}

-- this might be the key
local ignored_groups = {
--	CS_cop_C45_R870,
--	CS_cop_C45_MP5,
--	CS_cop_R870,
--	CS_cop_stealth_MP5,
--	fbi_vet,
--	CS_swat_MP5,
--	CS_swat_R870,
--	CS_swat_M4,
--	CS_heavy_M4,
--	CS_heavy_R870,
--	CS_heavy_M4_w,
--	FBI_suit_C45,
--	FBI_suit_C45_M4,
--	FBI_suit_M4_MP5,
--	FBI_suit_stealth_MP5,
--	FBI_swat_M4,
--	GS_swat_M4,
--	FBI_swat_R870,
--	FBI_heavy_G36,
--	FBI_heavy_R870,
--	FBI_heavy_G36_w,
--	GS_heavy_G36,
--	GS_heavy_R870,
--	GS_heavy_G36_w,
}

function MutatorOopsAllSpecials:modify_unit_categories(group_ai_tweak, difficulty_index)
	group_ai_tweak.special_unit_spawn_limits = {
		tank = math.huge,
		taser = math.huge,
		boom = math.huge,
		spooc = math.huge,
		shield = math.huge,
		medic = math.huge
	}
	if difficulty_index <= 5 then
		group_ai_tweak.unit_categories.spooc = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook")
				},	
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1")
				},					
				nypd = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1")
				},	
				lapd = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
				}			
			},
			access = access_type_all,
			special_type = "spooc"
		}
	elseif difficulty_index <= 6 then
		group_ai_tweak.unit_categories.spooc = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),		
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},					
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				lapd = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/payday2/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				}
			},
			access = access_type_all,
			special_type = "spooc"
		}
	else
		group_ai_tweak.unit_categories.spooc = {
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),		
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_1/ene_spook_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_hvh/characters/ene_spook_hvh_1/ene_spook_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_mod_halloween/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_cloaker/ene_murkywater_cloaker"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_spook/ene_murky_spook"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_cloaker_policia_federale/ene_swat_cloaker_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_spook_1/ene_spook_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},					
				nypd = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				lapd = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				},
				fbi = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker"),	
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker_sc/ene_zeal_cloaker_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_spook_cloak_1/ene_spook_cloak_1")
				}
			},
			access = access_type_all,
			special_type = "spooc"
		}
	end

	if difficulty_index <= 5 then
		group_ai_tweak.unit_categories.medic_M4 = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_bob/ene_akan_medic_bob")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
					Idstring("units/pd2_mod_halloween/characters/ene_medic_mp5/ene_medic_mp5")
				},					
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5")
				},					
				nypd = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic")
				},	
				lapd = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5")
				}				
			},
			access = access_type_all,
			special_type = "medic"
		}
	elseif difficulty_index == 6 then
			group_ai_tweak.unit_categories.medic_M4 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
						Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_bob/ene_akan_medic_bob"),
						Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_bob/ene_akan_medic_bob"),
						Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_bob/ene_akan_medic_bob"),
						Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_bob/ene_akan_medic_bob"),
						Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
					},
					zombie = {
						Idstring("units/pd2_mod_halloween/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
						Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
						Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
						Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
						Idstring("units/pd2_mod_halloween/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_mod_halloween/characters/ene_omnia_lpf/ene_omnia_lpf")
					},
					murkywater = {
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
						Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
						Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
						Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
						Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
						Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
						Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
					},
					federales = {
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
						Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
						Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
					},
					nypd = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
						Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
						Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
						Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
						Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
					},
					lapd = { 
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
					},
					fbi = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
						Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
					}				
				},
				access = access_type_all,
				special_type = "medic"
			}
	elseif difficulty_index == 7 then 
		group_ai_tweak.unit_categories.medic_M4 = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_zdann/ene_akan_medic_zdann"),
					Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_zdann/ene_akan_medic_zdann"),
					Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_zdann/ene_akan_medic_zdann"),
					Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_zdann/ene_akan_medic_zdann"),
					Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
					Idstring("units/pd2_mod_halloween/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_mod_halloween/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				}
			},
			access = access_type_all,
			special_type = "medic"
		}							
	else
		group_ai_tweak.unit_categories.medic_M4 = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
					Idstring("units/pd2_mod_reapers/characters/ene_drak_medic/ene_drak_medic"),
					Idstring("units/pd2_mod_reapers/characters/ene_drak_medic/ene_drak_medic"),
					Idstring("units/pd2_mod_reapers/characters/ene_drak_medic/ene_drak_medic"),
					Idstring("units/pd2_mod_reapers/characters/ene_drak_medic/ene_drak_medic"),
					Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
					Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_mod_halloween/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
					Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic"),
					Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
				}
			},
			access = access_type_all,
			special_type = "medic"
		}
	end

	if difficulty_index <= 3 then
		group_ai_tweak.unit_categories.CS_tazer = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},					
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},	
				lapd = {
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				}				
			},
			access = access_type_all,
			special_type = "taser"
		}
	elseif difficulty_index == 4 then
		group_ai_tweak.unit_categories.CS_tazer = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				lapd = {
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				}				
			},
			access = access_type_all,
			special_type = "taser"
		}
	elseif difficulty_index == 5 then
		group_ai_tweak.unit_categories.CS_tazer = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),					
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),					
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),					
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),		
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),					
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),					
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),		
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},	
				lapd = {
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),					
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),		
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")					
				},
				fbi = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),					
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser"),	
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				}				
			},
			access = access_type_all,
			special_type = "taser"
		}
	elseif difficulty_index == 6 or difficulty_index == 7 then
		group_ai_tweak.unit_categories.CS_tazer = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),			
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),		
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),	
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},					
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				lapd = {
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/payday2/characters/ene_tazer_1_sc/ene_tazer_1_sc"),
					Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				}
			},
			access = access_type_all,
			special_type = "taser"
		}
	else
		group_ai_tweak.unit_categories.CS_tazer = {
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass"),
					Idstring("units/pd2_mod_reapers/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_tazer/ene_zeal_tazer"),
					Idstring("units/pd2_dlc_hvh/characters/ene_tazer_hvh_1/ene_tazer_hvh_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_tazer/ene_zeal_tazer"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_taser/ene_titan_taser")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_tazer/ene_murkywater_tazer"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_tazer/ene_murky_tazer"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_tazer_policia_federale/ene_swat_tazer_policia_federale"),
					Idstring("units/pd2_dlc_bex/characters/ene_tazer_1/ene_tazer_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_taser/ene_titan_taser")					
				},		
				nypd = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				},	
				lapd = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")		
				},
				fbi = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer/ene_zeal_tazer"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_tazer_sc/ene_zeal_tazer_sc"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_taser/ene_titan_taser")
				}				
			},
			access = access_type_all,
			special_type = "taser"
		}
	end

	if difficulty_index <= 4 then
		group_ai_tweak.unit_categories.ALL_shield = {
			special_type = "shield",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/payday2/characters/ene_shield_2_sc/ene_shield_2_sc")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45"),
					Idstring("units/pd2_mod_reapers/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_shield_2/ene_shield_2")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_shield_hvh_1/ene_shield_hvh_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_shield_hvh_2/ene_shield_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_2/ene_shield_2")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_fbi/ene_murky_shield_fbi"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_yellow/ene_murky_shield_yellow")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_c45/ene_swat_shield_policia_federale_c45"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_mp9/ene_swat_shield_policia_federale_mp9"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_2/ene_shield_2")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_mod_nypd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_shield/ene_nypd_shield")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_mod_lapd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_shield_2/ene_shield_2")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/payday2/characters/ene_shield_2_sc/ene_shield_2_sc")
				}
			},
			access = access_type_all
		}
	elseif difficulty_index == 5 then
		group_ai_tweak.unit_categories.ALL_shield = {
			special_type = "shield",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/payday2/characters/ene_shield_2_sc/ene_shield_2_sc"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45"),
					Idstring("units/pd2_mod_reapers/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_dlc_hvh/characters/ene_shield_hvh_1/ene_shield_hvh_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_shield_hvh_2/ene_shield_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_fbi/ene_murky_shield_fbi"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_yellow/ene_murky_shield_yellow"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_fbi/ene_murky_shield_fbi"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_c45/ene_swat_shield_policia_federale_c45"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_mp9/ene_swat_shield_policia_federale_mp9"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_nypd_shield/ene_nypd_shield"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_mod_nypd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				lapd = { 
					Idstring("units/pd2_mod_lapd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_mod_lapd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/payday2/characters/ene_shield_2_sc/ene_shield_2_sc"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				}
			},
			access = access_type_all
	  }	
	elseif difficulty_index == 6 then
		group_ai_tweak.unit_categories.ALL_shield = {
			special_type = "shield",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/payday2/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg"),
					Idstring("units/pd2_mod_reapers/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_2/ene_shield_2"),
					Idstring("units/pd2_dlc_hvh/characters/ene_shield_hvh_1/ene_shield_hvh_1"),
					Idstring("units/pd2_dlc_hvh/characters/ene_shield_hvh_2/ene_shield_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_fbi/ene_murky_shield_fbi"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_city/ene_murky_shield_city"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_fbi/ene_murky_shield_fbi"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_c45/ene_swat_shield_policia_federale_c45"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_mp9/ene_swat_shield_policia_federale_mp9"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_nypd/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_nypd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				lapd = { 
					Idstring("units/pd2_mod_lapd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_lapd/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_shield_1/ene_shield_1"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_shield_1_sc/ene_shield_1_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				}
			},
			access = access_type_all
	  }		
	elseif difficulty_index == 7 then
		group_ai_tweak.unit_categories.ALL_shield = {
			special_type = "shield",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg"),
					Idstring("units/pd2_mod_reapers/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg"),
					Idstring("units/pd2_mod_reapers/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_mod_halloween/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_mod_halloween/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_city/ene_murky_shield_city"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_shield_city/ene_murky_shield_city"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_c45/ene_swat_shield_policia_federale_c45"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_mp9/ene_swat_shield_policia_federale_mp9"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_bex/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				nypd = {
					Idstring("units/pd2_mod_nypd/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_nypd/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_nypd/characters/ene_shield_gensec/ene_shield_gensec"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				lapd = { 
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				fbi = {
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/payday2/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_mod_lapd/characters/ene_city_shield/ene_city_shield"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				}
			},
			access = access_type_all
	  }	
	else
		group_ai_tweak.unit_categories.ALL_shield = {
			special_type = "shield",
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				russia = {
					Idstring("units/pd2_mod_reapers/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg"),
					Idstring("units/pd2_mod_reapers/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				zombie = {
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_mod_halloween/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
				},
				murkywater = {
					Idstring("units/pd2_mod_sharks/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_shield/ene_murkywater_shield"),
					Idstring("units/pd2_mod_sharks/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_2/ene_male_marshal_shield_2"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_c45/ene_swat_shield_policia_federale_c45"),
					Idstring("units/pd2_dlc_bex/characters/ene_swat_shield_policia_federale_mp9/ene_swat_shield_policia_federale_mp9"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_phalanx_1_assault/ene_phalanx_1_assault")
					
				},
				nypd = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				lapd = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				},
				fbi = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield_sc/ene_zeal_swat_shield_sc"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_usm2/characters/ene_male_marshal_shield_1/ene_male_marshal_shield_1"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1_assault/ene_phalanx_1_assault"),
					Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
				}
			},
			access = access_type_all
		}
	end

	if difficulty_index <= 7 then 
	    group_ai_tweak.unit_categories.boom_M4203 = {
		    unit_types = {
			    america = {
			    	Idstring("units/payday2/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    russia = {
			    	Idstring("units/pd2_mod_reapers/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    zombie = {
			    	Idstring("units/pd2_mod_halloween/characters/ene_grenadier_1/ene_grenadier_1")
			    },				
			    murkywater = {
			    	Idstring("units/pd2_mod_sharks/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    federales = {
			    	Idstring("units/pd2_dlc_bex/characters/ene_grenadier_1/ene_grenadier_1")
			    },				
			    nypd = {
			    	Idstring("units/pd2_mod_nypd/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    lapd = {
			    	Idstring("units/payday2/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    fbi = {
			    	Idstring("units/payday2/characters/ene_grenadier_1/ene_grenadier_1")
			    }			
		    },
		    access = access_type_all,
		    special_type = "boom"
	    }
	else 
	    group_ai_tweak.unit_categories.boom_M4203 = {
		    unit_types = {
			    america = {
			    	Idstring("units/pd2_dlc_gitgud/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    russia = {
			    	Idstring("units/pd2_mod_reapers/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    zombie = {
			    	Idstring("units/pd2_mod_halloween/characters/ene_grenadier_1/ene_grenadier_1")
			    },				
			    murkywater = {
			    	Idstring("units/pd2_mod_sharks/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    federales = {
			    	Idstring("units/pd2_dlc_bex/characters/ene_grenadier_1/ene_grenadier_1")
			    },				
			    nypd = {
			    	Idstring("units/pd2_dlc_gitgud/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    lapd = {
			    	Idstring("units/pd2_dlc_gitgud/characters/ene_grenadier_1/ene_grenadier_1")
			    },
			    fbi = {
			    	Idstring("units/pd2_dlc_gitgud/characters/ene_grenadier_1/ene_grenadier_1")
			    }		
		    },
		    access = access_type_all,
		    special_type = "boom"
	    }
	end

	if difficulty_index == 2 or difficulty_index == 3 then  
		group_ai_tweak.unit_categories.ALL_sniper = {
			special_type = "sniper",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_1_sc/ene_sniper_1_sc")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_sniper_1/ene_sniper_1")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_1/ene_sniper_1")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_sniper/ene_murky_sniper")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_sniper_1/ene_sniper_1")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_nypd/characters/ene_sniper_1/ene_sniper_1")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_lapd/characters/ene_sniper_1/ene_sniper_1")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_1_sc/ene_sniper_1_sc")
				}
			},
			access = access_type_all
	  }	
	elseif difficulty_index == 4 then  
		group_ai_tweak.unit_categories.ALL_sniper = {
			special_type = "sniper",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_1_sc/ene_sniper_1_sc")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_ru/ene_bravo_dmr_ru"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_sniper_1/ene_sniper_1")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_1/ene_sniper_1")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_murky/ene_bravo_dmr_murky"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_sniper/ene_murky_sniper")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_mex/ene_bravo_dmr_mex"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_sniper_1/ene_sniper_1")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_nypd/characters/ene_sniper_1/ene_sniper_1")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_lapd/characters/ene_sniper_1/ene_sniper_1")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_1_sc/ene_sniper_1_sc")
				}
			},
			access = access_type_all
	  }	
	  elseif difficulty_index == 5 then  
		group_ai_tweak.unit_categories.ALL_sniper = {
			special_type = "sniper",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_1_sc/ene_sniper_1_sc"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_ru/ene_bravo_dmr_ru"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/pd2_mod_reapers/characters/ene_sniper_2/ene_sniper_2")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_2/ene_sniper_2")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"),
					Idstring("units/pd2_mod_sharks/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_murky/ene_bravo_dmr_murky"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_sniper/ene_murky_sniper")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_mex/ene_bravo_dmr_mex"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_sniper_1/ene_sniper_1")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_nypd/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_lapd/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_1_sc/ene_sniper_1_sc"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				}
			},
			access = access_type_all
	  }
	  elseif difficulty_index == 6 then  
		group_ai_tweak.unit_categories.ALL_sniper = {
			special_type = "sniper",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc"),
					Idstring("units/payday2/characters/ene_sniper_3/ene_sniper_3")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_ru/ene_bravo_dmr_ru"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_sniper_2/ene_sniper_2")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_3/ene_sniper_3")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"),
					Idstring("units/pd2_mod_sharks/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_murky/ene_bravo_dmr_murky"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_sniper/ene_murky_sniper")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_mex/ene_bravo_dmr_mex"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_sniper_1/ene_sniper_1")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_2_sc/ene_sniper_2_sc")
				}
			},
			access = access_type_all
	  }
	  elseif difficulty_index == 7 then  
		group_ai_tweak.unit_categories.ALL_sniper = {
			special_type = "sniper",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_3/ene_sniper_3")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_ru/ene_bravo_dmr_ru"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_sniper_3/ene_sniper_3")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_halloween/characters/ene_sniper_3/ene_sniper_3")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"),
					Idstring("units/pd2_mod_sharks/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_murky/ene_bravo_dmr_murky"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_sniper_2/ene_murky_sniper_2")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_mex/ene_bravo_dmr_mex"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_sniper_1/ene_sniper_1")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_nypd/characters/ene_sniper_3/ene_sniper_3")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_lapd/characters/ene_sniper_3/ene_sniper_3")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/payday2/characters/ene_sniper_3/ene_sniper_3")
				}
			},
			access = access_type_all
	  }
	else
	group_ai_tweak.unit_categories.ALL_sniper = {
			special_type = "sniper",
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_sniper/ene_zeal_sniper")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_sniper_svd_snp/ene_akan_cs_swat_sniper_svd_snp"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_ru/ene_bravo_dmr_ru"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_reapers/characters/ene_zeal_sniper/ene_zeal_sniper")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_sniper_hvh_2/ene_sniper_hvh_2"),
					Idstring("units/pd2_mod_halloween/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_halloween/characters/ene_zeal_sniper/ene_zeal_sniper")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_sniper/ene_murkywater_sniper"),
					Idstring("units/pd2_mod_sharks/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_murky/ene_bravo_dmr_murky"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_mod_sharks/characters/ene_murky_sniper_2/ene_murky_sniper_2")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_sniper/ene_swat_policia_sniper"),
					Idstring("units/pd2_mod_reapers/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr_mex/ene_bravo_dmr_mex"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_bex/characters/ene_zeal_sniper/ene_zeal_sniper")
				},
				nypd = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_sniper/ene_zeal_sniper")
				},
				lapd = { 
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_sniper/ene_zeal_sniper")
				},
				fbi = {
					Idstring("units/payday2/characters/ene_sniper_1/ene_sniper_1"),
					Idstring("units/payday2/characters/ene_sniper_2/ene_sniper_2"),
					Idstring("units/pd2_dlc_drm/characters/ene_zeal_swat_heavy_sniper/ene_zeal_swat_heavy_sniper"),
					Idstring("units/pd2_dlc_vip/characters/ene_titan_sniper/ene_titan_sniper"),
					Idstring("units/pd2_mod_bravo/characters/ene_bravo_dmr/ene_bravo_dmr"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_1/ene_male_marshal_marksman_1"),
					Idstring("units/pd2_dlc_usm1/characters/ene_male_marshal_marksman_2/ene_male_marshal_marksman_2"),
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_sniper/ene_zeal_sniper")
				}
			},
			access = access_type_all
	  	}
	end

	for group, units_data in pairs(group_ai_tweak.unit_categories) do
		if not table.contains(ignored_groups, group) then
			if units_data.special_type then --back to the drawing board. AGAIN
				if units_data.special_type ~= "tank" and units_data.special_type ~= "medic" and units_data.special_type ~= "boom" and units_data.special_type ~= "spooc" and units_data.special_type ~= "taser" and units_data.special_type ~= "shield" then
					group_ai_tweak.unit_categories[group] = group_ai_tweak.unit_categories.ALL_tanks
				end
			else
				group_ai_tweak.unit_categories[group] = group_ai_tweak.unit_categories.ALL_sniper
			end
		end
	end
end