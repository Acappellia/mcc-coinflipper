kill @e[type=interaction,tag=tabletop]

execute positioned ~-1 ~ ~ run summon interaction ~ ~ ~ {width:2,height:0.05,Tags:["tabletop"]}
execute positioned ~1 ~ ~ run summon interaction ~ ~ ~ {width:2,height:0.05,Tags:["tabletop"]}

execute positioned ~ ~0.02 ~ run function ct:debug/summon_main_ui_slots
execute positioned ~ ~0.02 ~-0.5 run function ct:debug/summon_next_level_slots
execute positioned ~-1.6 ~0.02 ~-0.5 run function ct:debug/summon_table_coin_slots
execute positioned ~ ~1 ~-1.5 run function ct:debug/summon_table_hint_slots