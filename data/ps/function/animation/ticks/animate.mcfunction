#pedestrian tp
execute if data storage ps:tmp frame_data.tp_forward at @s run tp @s ^ ^ ^0.1
#execute if data storage ps:tmp frame_data.tp_forward run data merge entity @s {teleport_duration:1}

#interpolate motion
execute if data storage ps:tmp frame_data.part_1 on passengers as @s[tag=part_1] run data modify entity @s {} merge from storage ps:tmp frame_data.part_1
execute if data storage ps:tmp frame_data.part_2 on passengers as @s[tag=part_2] run data modify entity @s {} merge from storage ps:tmp frame_data.part_2
execute if data storage ps:tmp frame_data.part_3 on passengers as @s[tag=part_3] run data modify entity @s {} merge from storage ps:tmp frame_data.part_3
execute if data storage ps:tmp frame_data.part_4 on passengers as @s[tag=part_4] run data modify entity @s {} merge from storage ps:tmp frame_data.part_4
execute if data storage ps:tmp frame_data.part_5 on passengers as @s[tag=part_5] run data modify entity @s {} merge from storage ps:tmp frame_data.part_5
execute if data storage ps:tmp frame_data.part_6 on passengers as @s[tag=part_6] run data modify entity @s {} merge from storage ps:tmp frame_data.part_6
execute if data storage ps:tmp frame_data.part_7 on passengers as @s[tag=part_7] run data modify entity @s {} merge from storage ps:tmp frame_data.part_7
execute if data storage ps:tmp frame_data.part_8 on passengers as @s[tag=part_8] run data modify entity @s {} merge from storage ps:tmp frame_data.part_8
execute if data storage ps:tmp frame_data.part_9 on passengers as @s[tag=part_9] run data modify entity @s {} merge from storage ps:tmp frame_data.part_9
execute if data storage ps:tmp frame_data.part_10 on passengers as @s[tag=part_10] run data modify entity @s {} merge from storage ps:tmp frame_data.part_10
execute if data storage ps:tmp frame_data.part_11 on passengers as @s[tag=part_11] run data modify entity @s {} merge from storage ps:tmp frame_data.part_11
execute if data storage ps:tmp frame_data.part_12 on passengers as @s[tag=part_12] run data modify entity @s {} merge from storage ps:tmp frame_data.part_12
execute if data storage ps:tmp frame_data.part_13 on passengers as @s[tag=part_13] run data modify entity @s {} merge from storage ps:tmp frame_data.part_13
execute if data storage ps:tmp frame_data.part_14 on passengers as @s[tag=part_14] run data modify entity @s {} merge from storage ps:tmp frame_data.part_14
execute if data storage ps:tmp frame_data.part_15 on passengers as @s[tag=part_15] run data modify entity @s {} merge from storage ps:tmp frame_data.part_15
execute if data storage ps:tmp frame_data.part_16 on passengers as @s[tag=part_16] run data modify entity @s {} merge from storage ps:tmp frame_data.part_16
execute if data storage ps:tmp frame_data.part_17 on passengers as @s[tag=part_17] run data modify entity @s {} merge from storage ps:tmp frame_data.part_17
execute if data storage ps:tmp frame_data.part_18 on passengers as @s[tag=part_18] run data modify entity @s {} merge from storage ps:tmp frame_data.part_18
execute if data storage ps:tmp frame_data.part_19 on passengers as @s[tag=part_19] run data modify entity @s {} merge from storage ps:tmp frame_data.part_19
execute if data storage ps:tmp frame_data.part_20 on passengers as @s[tag=part_20] run data modify entity @s {} merge from storage ps:tmp frame_data.part_20

execute if data storage ps:tmp frame_data.sound at @s run function ps:animation/ticks/sound with storage ps:tmp frame_data.sound
execute if data storage ps:tmp frame_data.particle at @s run function ps:animation/ticks/particle with storage ps:tmp frame_data.particle

execute if data storage ps:tmp frame_data.is_last run function ps:animation/ticks/end