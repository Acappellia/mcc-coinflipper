scoreboard players set #toss_status ct 5

execute at @n[type=marker,tag=table_mainui_slot_center] run playsound item.armor.equip_leather player @a ~ ~ ~ 1 1

execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index >= #ray_selected_slot ct if score @s table_coin_index < #coin_list_last ct at @s run tag @n[tag=landed_coin,type=text_display,distance=..0.1] add to_move_right
execute as @e[type=text_display,tag=to_move_right] at @s run tp ~0.3 ~ ~

execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct at @s as @n[tag=landed_coin,type=text_display,distance=..1,tag=!to_move_right] run function ct:special_coins/4/insert
tag @e[tag=landed_coin,type=text_display] remove to_move_right

execute store result storage ct:tmp to_insert.index int 1 run scoreboard players get #ray_selected_slot ct
execute unless score #ray_selected_slot ct = #coin_list_last ct run function ct:special_coins/4/insert_coin_list with storage ct:tmp to_insert

#end toss
schedule function ct:player/toss_end 10t replace