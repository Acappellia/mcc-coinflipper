#change status
scoreboard players set #toss_status ct 6

execute at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 2

#check next
execute if score #toss_left ct matches 1.. run return run scoreboard players set #toss_status ct 1

#check stop
scoreboard players set #toss_status ct 0
schedule function ct:player/round_checkmain 10t replace