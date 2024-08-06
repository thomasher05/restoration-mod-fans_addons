-- Disbale dropping ammo pickups

MutatorNoAmmoPickups = MutatorNoAmmoPickups or class(BaseMutator)
MutatorNoAmmoPickups._type = "MutatorNoAmmoPickups"
MutatorNoAmmoPickups.name_id = "mutator_no_ammo_pickups"
MutatorNoAmmoPickups.desc_id = "mutator_no_ammo_pickups_desc"
MutatorNoAmmoPickups.reductions = {
	money = 0,
	exp = 0
}
MutatorNoAmmoPickups.disables_achievements = false
MutatorNoAmmoPickups.categories = {"gameplay","enemies"}
MutatorNoAmmoPickups.icon_coords = {
	3,
	5
}	

function MutatorNoAmmoPickups:setup(data)
	local char_tweak = tweak_data.character
	--cannon fodder
	char_tweak.security.do_not_drop_ammo = true
	char_tweak.security_undominatable.do_not_drop_ammo = true
	char_tweak.mute_security_undominatable.do_not_drop_ammo = true
	char_tweak.security_mex.do_not_drop_ammo = true
	char_tweak.security_mex_no_pager.do_not_drop_ammo = true
	char_tweak.gensec.do_not_drop_ammo = true
	char_tweak.gensec_guard.do_not_drop_ammo = true
	char_tweak.cop.do_not_drop_ammo = true
	char_tweak.cop_forest.do_not_drop_ammo = true
	char_tweak.cop_female.do_not_drop_ammo = true
	char_tweak.dave.do_not_drop_ammo = true
	char_tweak.fbi.do_not_drop_ammo = true
	char_tweak.fbi_female.do_not_drop_ammo = true
	char_tweak.swat.do_not_drop_ammo = true
	char_tweak.hrt.do_not_drop_ammo = true
	char_tweak.zeal_swat.do_not_drop_ammo = true
	char_tweak.hrt_titan.do_not_drop_ammo = true
	char_tweak.heavy_swat.do_not_drop_ammo = true
	char_tweak.fbi_swat.do_not_drop_ammo = true
	char_tweak.fbi_heavy_swat.do_not_drop_ammo = true
	char_tweak.city_swat.do_not_drop_ammo = true
	char_tweak.city_swat_guard.do_not_drop_ammo = true
	char_tweak.weekend.do_not_drop_ammo = true
	char_tweak.weekend_guard.do_not_drop_ammo = true
	char_tweak.gangster.do_not_drop_ammo = true
	char_tweak.enforcer.do_not_drop_ammo = true
	char_tweak.enforcer_assault.do_not_drop_ammo = true
	char_tweak.biker.do_not_drop_ammo = true
	char_tweak.biker_female.do_not_drop_ammo = true
	char_tweak.biker_guard.do_not_drop_ammo = true
	char_tweak.triad.do_not_drop_ammo = true
	char_tweak.captain.do_not_drop_ammo = true
	char_tweak.captain_female.do_not_drop_ammo = true
	char_tweak.biker_escape.do_not_drop_ammo = true
	char_tweak.mobster.do_not_drop_ammo = true
	char_tweak.mobster_boss.do_not_drop_ammo = true
	char_tweak.bolivian.do_not_drop_ammo = true
	char_tweak.bolivian_indoors.do_not_drop_ammo = true
	char_tweak.bolivian_indoors_mex.do_not_drop_ammo = true
	char_tweak.ranchmanager.do_not_drop_ammo = true
	--Special units
	char_tweak.weekend_dmr.do_not_drop_ammo = true
	char_tweak.fbi_vet.do_not_drop_ammo = true
	char_tweak.fbi_vet_boss.do_not_drop_ammo = true
	char_tweak.meme_man.do_not_drop_ammo = true
	char_tweak.meme_man_shield.do_not_drop_ammo = true
	char_tweak.vetlod.do_not_drop_ammo = true
	char_tweak.medic.do_not_drop_ammo = true
	char_tweak.omnia_lpf.do_not_drop_ammo = true
	char_tweak.heavy_swat_sniper.do_not_drop_ammo = true
	char_tweak.marshal_shield.do_not_drop_ammo = true
	char_tweak.marshal_shield_break.do_not_drop_ammo = true
	char_tweak.tank.do_not_drop_ammo = true
	char_tweak.tank_black.do_not_drop_ammo = true
	char_tweak.tank_skull.do_not_drop_ammo = true
	char_tweak.tank_medic.do_not_drop_ammo = true
	char_tweak.tank_titan.do_not_drop_ammo = true
	char_tweak.tank_titan_assault.do_not_drop_ammo = true
	char_tweak.enforcer_assault.do_not_drop_ammo = true
	char_tweak.tank_mini.do_not_drop_ammo = true
	char_tweak.shield.do_not_drop_ammo = true
	char_tweak.phalanx_minion.do_not_drop_ammo = true
	char_tweak.phalanx_minion_assault.do_not_drop_ammo = true
	char_tweak.boom.do_not_drop_ammo = true
	char_tweak.taser.do_not_drop_ammo = true
	char_tweak.taser_titan.do_not_drop_ammo = true
	char_tweak.taser_titan_reaper.do_not_drop_ammo = true
	char_tweak.city_swat_titan.do_not_drop_ammo = true
	char_tweak.city_swat_titan_assault.do_not_drop_ammo = true
	char_tweak.weekend_lmg.do_not_drop_ammo = true
	char_tweak.weekend_elite_guard.do_not_drop_ammo = true
	char_tweak.marshal_marksman.do_not_drop_ammo = true
	char_tweak.tank_hw_black.do_not_drop_ammo = true
	char_tweak.tank_hw.do_not_drop_ammo = true
	char_tweak.tank_mini.do_not_drop_ammo = true
	char_tweak.spooc.do_not_drop_ammo = true
	char_tweak.spooc_titan.do_not_drop_ammo = true
	char_tweak.shadow_spooc.do_not_drop_ammo = true
	--Captains
	char_tweak.phalanx_vip.do_not_drop_ammo = true
	char_tweak.phalanx_vip_break.do_not_drop_ammo = true
	char_tweak.headless_hatman.do_not_drop_ammo = true
	char_tweak.spring.do_not_drop_ammo = true
	char_tweak.summers.do_not_drop_ammo = true
	char_tweak.boom_summers.do_not_drop_ammo = true
	char_tweak.taser_summers.do_not_drop_ammo = true
	char_tweak.medic_summers.do_not_drop_ammo = true
	char_tweak.autumn.do_not_drop_ammo = true
	--Other/Bosses
	char_tweak.triad_boss.do_not_drop_ammo = true
	char_tweak.triad_boss_no_armor.do_not_drop_ammo = true
	char_tweak.deep_boss.do_not_drop_ammo = true
	char_tweak.snowman_boss.do_not_drop_ammo = true
	char_tweak.piggydozer.do_not_drop_ammo = true
	char_tweak.biker_boss.do_not_drop_ammo = true
	char_tweak.hector_boss.do_not_drop_ammo = true
	char_tweak.hector_boss_no_armor.do_not_drop_ammo = true
	char_tweak.chavez_boss.do_not_drop_ammo = true
	char_tweak.drug_lord_boss.do_not_drop_ammo = true
	char_tweak.drug_lord_boss_stealth.do_not_drop_ammo = true
	char_tweak.spooc_gangster.do_not_drop_ammo = true
	char_tweak.tank_biker.do_not_drop_ammo = true
	char_tweak.inside_man.do_not_drop_ammo = true
	char_tweak.inside_woman.do_not_drop_ammo = true
end