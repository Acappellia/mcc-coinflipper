execute as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct at @s run tp @n[tag=landed_coin,type=text_display,distance=..0.1] ~-0.3 ~ ~

scoreboard players remove #coin_list_last ct 1

execute as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct at @s as @n[tag=landed_coin,type=text_display,distance=..0.1] at @s run function ct:special_coins/20/kill_coin

data remove storage ct:table coin_list[-2]

execute if data storage ct:table coin_list[-2] run function ct:special_coins/20/loop