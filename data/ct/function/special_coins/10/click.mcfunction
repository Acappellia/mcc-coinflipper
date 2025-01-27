scoreboard players set #toss_status ct 5

execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #ray_selected_slot ct at @s as @n[tag=landed_coin,type=text_display,distance=..0.1] at @s run function ct:special_coins/10/get_coin_data

execute store result storage ct:tmp to_flip.index int 1 run scoreboard players get #ray_selected_slot ct
execute unless score #to_flip_coin_id ct matches 2..3 if score #to_flip_coin_ishead ct matches 1 run function ct:special_coins/10/flip_coin_to_back with storage ct:tmp to_flip
execute unless score #to_flip_coin_id ct matches 2..3 if score #to_flip_coin_ishead ct matches 0 run function ct:special_coins/10/flip_coin_to_front with storage ct:tmp to_flip

#end toss
schedule function ct:player/toss_end 10t replace