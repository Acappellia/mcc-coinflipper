kill @e[type=interaction,tag=tabletop]

execute positioned ~ ~ ~-2.5 run summon interaction ~ ~ ~ {width:5,height:0.05,Tags:["tabletop"]}
execute positioned ~ ~ ~2.5 run summon interaction ~ ~ ~ {width:5,height:0.05,Tags:["tabletop"]}

execute positioned ~ ~0.02 ~ run function ct:debug/summon_main_ui_slots
execute positioned ~1 ~0.02 ~ run function ct:debug/summon_next_level_slots
execute positioned ~1.5 ~0.02 ~-4 run function ct:debug/summon_table_coin_slots
execute positioned ~3 ~2 ~ run function ct:debug/summon_table_hint_slots