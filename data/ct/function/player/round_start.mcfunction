#change status
scoreboard players set #round_status ct 1

execute if score #current_round ct matches 1 run function ct:player/round_inits/1

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 0.8

scoreboard players set #current_toss ct 1
scoreboard players set #toss_status ct 1