local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
local difficulty_index = tweak_data:difficulty_to_index(difficulty)
local shadow_fucked_me_hard = Global.game_settings and Global.game_settings.one_down

    ---this script is DS Pro Job only
    if shadow_fucked_me_hard and difficulty_index == 8 then	
        boss_guard_1 = "units/payday2/characters/ene_gang_black_enforcer/ene_gang_black_enforcer"
        boss_guard_2 = "units/payday2/characters/ene_gang_black_enforcer/ene_gang_black_enforcer"
        boss_backup_1 = "units/payday2/characters/ene_gang_mobster_enforcer/ene_gang_mobster_enforcer"
        boss_backup_2 = "units/payday2/characters/ene_gang_mobster_enforcer/ene_gang_mobster_enforcer"
        boss_backup_3 = "units/pd2_dlc_flat/characters/ene_gang_colombian_enforcer/ene_gang_colombian_enforcer"
    end

  --two heavy thug enforcers by the door before boss battle
return{

    [101205] = {
        values = {
            enemy = boss_guard_1
        }
    },
    [101206] = {
        values = {
            enemy = boss_backup_2
           }
        
    },
    --boss has backup guys, including boom booms
    [100948] = {
        values = {
            enemy = boss_backup_1
        }
    },
    [100947] = {
        values = {
            enemy = boss_backup_2
        }
    },
    [100960] = {
        values = {
            enemy = boss_backup_3
        }
    }
 }   