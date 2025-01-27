execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".ct_coin run return -1

scoreboard players set #total_player_coins ct 0
execute as @a run execute store result score @s player_coin_count run clear @s firework_star[custom_data~{ct_coin:1b}] 0
execute as @a run scoreboard players operation #total_player_coins ct += @s player_coin_count
execute if score #total_player_coins ct matches 1.. run return -1

#execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 0.8
#terminate round and check
scoreboard players set #toss_status ct 0
schedule function ct:player/round_checkmain 10t replace
