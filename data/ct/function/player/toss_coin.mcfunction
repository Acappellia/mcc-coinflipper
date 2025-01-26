advancement revoke @s only ct:toss_coin

#check if valid
execute unless score #toss_status ct matches 1 run return -1
scoreboard players set #toss_status ct 2

kill @e[type=text_display,tag=newbie_hint]

#clear data
scoreboard players reset #toss_ani_id
scoreboard players reset #toss_ishead
scoreboard players reset #toss_coin_id
data remove storage ct:tmp toss_result

#get coin_id
execute store result score #toss_coin_id ct store result storage ct:tmp toss_result.coin_id int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".coin_id

#random result
execute store result score #toss_ani_id ct store result storage ct:tmp toss_result.ani_id int 1 run random value 0..99
execute if score #toss_ani_id ct matches 0..49 run scoreboard players set #toss_ishead ct 1
execute if score #toss_ani_id ct matches 50..99 run scoreboard players set #toss_ishead ct 0
execute store result storage ct:tmp toss_result.ishead int 1 run scoreboard players get #toss_ishead ct

#remove item
item replace entity @s weapon.mainhand with air

#toss
execute at @e[type=marker,distance=..10,tag=table_mainui_slot_center] run function ps:animation/add with storage ct:tmp toss_result