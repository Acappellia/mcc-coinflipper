scoreboard players set #toss_status ct 5

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound item.armor.equip_leather player @a ~ ~ ~ 1 1

scoreboard players operation #coin_to_flip ct = #coin_list_last ct
scoreboard players remove #coin_to_flip ct 1

execute if score #toss_ishead ct matches 1 run data modify storage ct:table coin_list[-2].ishead set value 0
execute if score #toss_ishead ct matches 1 as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_to_flip ct at @s as @n[type=text_display,distance=..0.1,tag=landed_coin] run scoreboard players set @s coin_ishead 0
execute if score #toss_ishead ct matches 1 as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_to_flip ct at @s as @n[type=item_display,distance=..0.1,tag=part_1] run data merge entity @s {transformation:[1,0,0,0,0,-1,0,0,0,0,-1,0,0,0,0,1],interpolation_duration:5,start_interpolation:-1}
execute if score #toss_ishead ct matches 0 run data modify storage ct:table coin_list[-2].ishead set value 1
execute if score #toss_ishead ct matches 0 as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_to_flip ct at @s as @n[type=text_display,distance=..0.1,tag=landed_coin] run scoreboard players set @s coin_ishead 1
execute if score #toss_ishead ct matches 0 as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_to_flip ct at @s as @n[type=item_display,distance=..0.1,tag=part_1] run data merge entity @s {transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1],interpolation_duration:5,start_interpolation:-1}

#end toss
schedule function ct:player/toss_end 10t replace