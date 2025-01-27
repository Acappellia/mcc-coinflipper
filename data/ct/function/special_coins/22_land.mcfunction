scoreboard players set #total_player_coins ct 0

playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.8 0.8
scoreboard players add #toss_left ct 1
execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2

execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".ct_coin run scoreboard players add #total_player_coins ct 1
execute as @a run execute store result score @s player_coin_count run clear @s firework_star[custom_data~{ct_coin:1b}] 0
execute as @a run scoreboard players operation #total_player_coins ct += @s player_coin_count

execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".ct_coin run kill @s
execute as @a run execute store result score @s player_coin_count run clear @s firework_star[custom_data~{ct_coin:1b}]

execute if score #total_player_coins ct matches 1.. run function ct:special_coins/22_land_loop