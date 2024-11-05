ModifierMedicAdrenaline.default_value = "spawn_chance"
ModifierMedicAdrenaline.medics = {
	Idstring("units/payday2/characters/ene_medic_mp5/ene_medic_mp5"),
	Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
	Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
	Idstring("units/pd2_mod_nypd/characters/ene_nypd_medic/ene_nypd_medic"),	
	Idstring("units/pd2_mod_omnia/characters/ene_omnia_medic/ene_omnia_medic"),			
	Idstring("units/pd2_mod_sharks/characters/ene_murky_medic_m4/ene_murky_medic_m4"),
	Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic/ene_murkywater_medic"),
	Idstring("units/pd2_dlc_bph/characters/ene_murkywater_medic_r870/ene_murkywater_medic_r870"),
	Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_medic/ene_zeal_medic")
}

ModifierMedicAdrenaline.reapermedic = {
	Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_ak47_ass/ene_akan_medic_ak47_ass"),
	Idstring("units/pd2_dlc_mad/characters/ene_akan_medic_r870/ene_akan_medic_r870"),
	Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_bob/ene_akan_medic_bob"),
	Idstring("units/pd2_mod_reapers/characters/ene_akan_medic_zdann/ene_akan_medic_zdann"),
	Idstring("units/pd2_mod_reapers/characters/ene_drak_medic/ene_drak_medic")
}	

ModifierMedicAdrenaline.zombiemedic = {
	Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_m4/ene_medic_hvh_m4"),
	Idstring("units/pd2_dlc_hvh/characters/ene_medic_hvh_r870/ene_medic_hvh_r870"),
	Idstring("units/pd2_mod_halloween/characters/ene_medic_mp5/ene_medic_mp5"),
	Idstring("units/pd2_mod_halloween/characters/ene_zeal_medic/ene_zeal_medic")
}

ModifierMedicAdrenaline.bexmedic = {
	Idstring("units/pd2_dlc_bex/characters/ene_medic_mp5/ene_medic_mp5"),
	Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale/ene_swat_medic_policia_federale"),
	Idstring("units/pd2_dlc_bex/characters/ene_swat_medic_policia_federale_r870/ene_swat_medic_policia_federale_r870")
}

function ModifierMedicAdrenaline:modify_value(id, value)
	if id == "GroupAIStateBesiege:SpawningUnit" then
		local is_medic = table.contains(ModifierMedicAdrenaline.medics, value)
		local is_reapermedic = table.contains(ModifierMedicAdrenaline.reapermedic, value)
		local is_bexmedic = table.contains(ModifierMedicAdrenaline.bexmedic, value)
		local is_zombiemedic = table.contains(ModifierMedicAdrenaline.zombiemedic, value)
		
		if is_medic and math.random(0,100) < 15 then
			return Idstring("units/pd2_dlc_vip/characters/ene_omnia_lpf/ene_omnia_lpf")
		elseif is_reapermedic and math.random(0,100) < 15 then
			return Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
		elseif is_bexmedic and math.random(0,100) < 15 then
			return Idstring("units/pd2_mod_reapers/characters/ene_akan_lpf/ene_akan_lpf")
		elseif is_bexmedic and math.random(0,100) > 85 then
			return Idstring("units/pd2_mod_reapers/characters/ene_subject_enforcer/ene_subject_enforcer")
		elseif is_zombiemedic and math.random(0,100) < 15 then
			return Idstring("units/pd2_mod_halloween/characters/ene_omnia_lpf/ene_omnia_lpf")
		end
	end
	return value
end

--Just in case
function ModifierMedicAdrenaline:OnEnemyHealed(target)
end