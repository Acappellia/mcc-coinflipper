#change step
scoreboard players set #toss_status ct 3

#store result
data modify storage ct:table coin_list append from storage ct:tmp toss_result
execute store result score #coin_list_last ct if data storage ct:table coin_list[]
scoreboard players remove #coin_list_last ct 1

#store result
tag @s add landed_coin
scoreboard players operation @s coin_id = #toss_coin_id ct
scoreboard players operation @s coin_ishead = #toss_ishead ct

#move coin
data modify entity @s teleport_duration set value 5
#execute on passengers as @s[type=item_display] run data modify entity @s teleport_duration set value 5
execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct run tp @n[type=text_display,distance=..10,tag=new_dropped] @s
execute if score #toss_ishead ct matches 1 on passengers as @s[type=item_display] run data merge entity @s {transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1]}
execute if score #toss_ishead ct matches 0 on passengers as @s[type=item_display] run data merge entity @s {transformation:[-1,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,1]}

#schedule next step
schedule function ct:player/toss_wait_extra_input 7t replace

#end
tag @s remove new_dropped