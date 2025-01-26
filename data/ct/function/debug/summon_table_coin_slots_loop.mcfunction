summon marker ~ ~ ~ {Tags:["new_slot","table_coin_slot"]}
scoreboard players operation @n[tag=new_slot,type=marker,distance=..1] table_coin_index = #table_coin_index ct
scoreboard players add #table_coin_index ct 1
tag @n[tag=new_slot,type=marker,distance=..1] remove new_slot

execute if score #table_coin_index ct matches ..99 positioned ~ ~ ~0.5 run function ct:debug/summon_table_coin_slots_loop