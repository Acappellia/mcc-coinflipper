scoreboard players set #toss_status ct 5

scoreboard players operation #coin_to_recycle ct = #coin_list_last ct
scoreboard players remove #coin_to_recycle ct 1

execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #coin_to_recycle ct at @s as @n[tag=landed_coin,type=text_display,distance=..0.1] at @s run function ct:special_coins/14/kill_coin

execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct at @s run tp @n[tag=landed_coin,type=text_display,distance=..0.1] ~ ~ ~-0.5

data remove storage ct:table coin_list[-2]

scoreboard players add #toss_left ct 1

#end toss
schedule function ct:player/toss_end 10t replace