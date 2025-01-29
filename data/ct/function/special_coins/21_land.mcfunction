scoreboard players add #toss_left ct 1
execute at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2
execute store result score #list_coins ct if data storage ct:table coin_list[]

function ct:special_coins/21_land_loop