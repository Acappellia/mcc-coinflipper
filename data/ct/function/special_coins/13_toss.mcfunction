execute if score #player_life ct matches ..2 run scoreboard players add #player_life ct 1
scoreboard players add #toss_left ct 1

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2