advancement revoke @s only ct:toss_coin

#check other status

#start game
execute if score #game_status ct matches 0 run return run function ct:player/game_init
execute if score #game_status ct matches 2 run return run function ct:player/game_init

#collect all
execute if score #round_status ct matches 4 run return run function ct:player/round_wait_next

#next round
execute if score #round_status ct matches 5 run return run function ct:player/round_end

#check if valid
execute unless score #toss_status ct matches 1 run return -1
execute unless data entity @s SelectedItem.components."minecraft:custom_data".ct_coin run return -1
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
execute store result score #toss_ani_id ct store result storage ct:tmp toss_result.ani_id int 1 run random value 0..1
execute if score #toss_ani_id ct matches 1 run scoreboard players set #toss_ishead ct 1
execute if score #toss_ani_id ct matches 0 run scoreboard players set #toss_ishead ct 0
execute store result storage ct:tmp toss_result.ishead int 1 run scoreboard players get #toss_ishead ct

#special coin
execute if score #toss_coin_id ct matches 2 run function ct:special_coins/2_toss
execute if score #toss_coin_id ct matches 3 run function ct:special_coins/3_toss
execute if score #toss_coin_id ct matches 5 run function ct:special_coins/5_toss
execute if score #toss_coin_id ct matches 6 run function ct:special_coins/6_toss

#remove item
item replace entity @s weapon.mainhand with air
scoreboard players remove #toss_left ct 1
playsound block.amethyst_block.step player @a ~ ~ ~ 1 2

#special coin
execute if score #toss_coin_id ct matches 13 run function ct:special_coins/13_toss
execute if score #toss_coin_id ct matches 15 run function ct:special_coins/15_toss
execute if score #toss_coin_id ct matches 99 run function ct:special_coins/99_toss

#toss
scoreboard players set #ani_is_coin ct 1
execute at @e[type=marker,distance=..10,tag=table_mainui_slot_center] run function ps:animation/add with storage ct:tmp toss_result
scoreboard players reset #ani_is_coin ct
