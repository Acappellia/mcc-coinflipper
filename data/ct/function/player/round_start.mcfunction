#change status
scoreboard players set #round_status ct 1

execute store result score #round_variant ct run random value 1..2

execute if score #current_round ct matches 1 run function ct:player/round_inits/1
execute if score #current_round ct matches 2 run function ct:player/round_inits/2
execute if score #current_round ct matches 3 if score #round_variant ct matches 1 run function ct:player/round_inits/3a
execute if score #current_round ct matches 3 if score #round_variant ct matches 2 run function ct:player/round_inits/3b
execute if score #current_round ct matches 4 if score #round_variant ct matches 1 run function ct:player/round_inits/4a
execute if score #current_round ct matches 4 if score #round_variant ct matches 2 run function ct:player/round_inits/4b
execute if score #current_round ct matches 5 if score #round_variant ct matches 1 run function ct:player/round_inits/5a
execute if score #current_round ct matches 5 if score #round_variant ct matches 2 run function ct:player/round_inits/5b
execute if score #current_round ct matches 6 if score #round_variant ct matches 1 run function ct:player/round_inits/6a
execute if score #current_round ct matches 6 if score #round_variant ct matches 2 run function ct:player/round_inits/6b
execute if score #current_round ct matches 7 if score #round_variant ct matches 1 run function ct:player/round_inits/7a
execute if score #current_round ct matches 7 if score #round_variant ct matches 2 run function ct:player/round_inits/7b
execute if score #current_round ct matches 8 if score #round_variant ct matches 1 run function ct:player/round_inits/8a
execute if score #current_round ct matches 8 if score #round_variant ct matches 2 run function ct:player/round_inits/8b
execute if score #current_round ct matches 9 run function ct:player/round_inits/9
execute if score #current_round ct matches 10 if score #round_variant ct matches 1 run function ct:player/round_inits/10a
execute if score #current_round ct matches 10 if score #round_variant ct matches 2 run function ct:player/round_inits/10b

execute at @e[type=text_display,tag=round_hint] run particle end_rod ~ ~ ~ 0.6 0 0 0.03 6
execute at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 2

scoreboard players set #toss_status ct 1
data remove storage ct:table coin_list
data modify storage ct:table coin_list set value []