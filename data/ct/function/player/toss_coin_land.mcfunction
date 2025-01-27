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
#execute on passengers as @s[type=item_display] run data modify entity @s teleport_duration set value 10
execute if score #toss_ishead ct matches 1 on passengers as @s[type=item_display] run data merge entity @s {transformation:[-1,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,2],interpolation_duration:5,start_interpolation:-1}
execute if score #toss_ishead ct matches 0 on passengers as @s[type=item_display] run data merge entity @s {transformation:[1,0,0,0,0,-1,0,0,0,0,-1,0,0,0,0,2],interpolation_duration:5,start_interpolation:-1}

#triger effect
execute if score #toss_coin_id ct matches 7 run function ct:special_coins/7_land
execute if score #toss_coin_id ct matches 16 run return run function ct:special_coins/16_land
execute if score #toss_coin_id ct matches 17 run function ct:special_coins/17_land
execute if score #toss_coin_id ct matches 18 run function ct:special_coins/18_land
execute if score #toss_coin_id ct matches 19 run function ct:special_coins/19_land
execute if score #toss_coin_id ct matches 21 run function ct:special_coins/21_land
execute if score #toss_coin_id ct matches 22 run function ct:special_coins/22_land
execute if score #toss_coin_id ct matches 23 run return run function ct:special_coins/23_land
execute if score #toss_coin_id ct matches 99 run function ct:special_coins/99_land

#schedule move
schedule function ct:player/toss_move_coin 2t replace

#schedule next step
schedule function ct:player/toss_wait_extra_input 8t replace