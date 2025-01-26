scoreboard players set #round_status ct 4

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 0.8

execute at @e[type=text_display,tag=round_hint] run particle ash ~ ~ ~ 0 0 0 0.1 10
kill @e[type=text_display,tag=round_hint]
execute at @e[type=text_display,tag=landed_coin] run particle ash ~ ~ ~ 0 0 0 0.1 10
execute as @e[type=text_display,tag=landed_coin] on passengers run kill @s
execute as @e[type=text_display,tag=landed_coin] run kill @s

execute at @e[type=marker,tag=table_nextlvl_slot_title] run summon text_display ~ ~ ~ {Tags:["next_level_hint"],text:'"这或许是另一次机会……"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}

execute at @e[type=marker,tag=table_nextlvl_slot_reward2] run function ct:gen_coin/spec {coin_id:99}

execute at @e[type=marker,tag=table_nextlvl_slot_collectall] run summon text_display ~ ~ ~ {Tags:["next_level_hint_collect"],text:'"收下硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}