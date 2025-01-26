#change status
scoreboard players set #toss_status ct 6

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 0.8

#check next
scoreboard players add #current_toss ct 1
execute unless score #current_toss ct > #max_toss ct run return run scoreboard players set #toss_status ct 1

#check stop
scoreboard players set #toss_status ct 0
schedule function ct:player/round_checkmain 10t replace