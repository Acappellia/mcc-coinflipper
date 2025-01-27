scoreboard players set #toss_status ct 5


execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #ray_selected_slot ct at @s as @n[tag=landed_coin,type=text_display,distance=..0.1] at @s run function ct:special_coins/9/kill_coin

execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index > #ray_selected_slot ct if score @s table_coin_index <= #coin_list_last ct at @s run tag @n[tag=landed_coin,type=text_display,distance=..0.1] add to_move_left
execute as @e[type=text_display,tag=to_move_left] at @s run tp ~-0.3 ~ ~
tag @e[tag=landed_coin,type=text_display] remove to_move_left

execute store result storage ct:tmp to_remove.index int 1 run scoreboard players get #ray_selected_slot ct
function ct:special_coins/9/remove_coin with storage ct:tmp to_remove

#end toss
schedule function ct:player/toss_end 10t replace