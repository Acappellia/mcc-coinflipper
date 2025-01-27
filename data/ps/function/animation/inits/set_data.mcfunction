#set obj_id
scoreboard players operation @s ps_obj_id = #assigned_obj_id ps

#set interaction
execute on passengers as @s[type=interaction] run function ps:animation/inits/set_interaction_data

#set parts model
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_1
execute if data storage ps:tmp part_data if score #ani_is_coin ct matches 1 on passengers as @s[tag=part_1] run function ps:animation/inits/set_models_coin with storage ct:tmp toss_result
execute if data storage ps:tmp part_data unless score #ani_is_coin ct matches 1 on passengers as @s[tag=part_1] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_2
execute if data storage ps:tmp part_data on passengers as @s[tag=part_2] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_3
execute if data storage ps:tmp part_data on passengers as @s[tag=part_3] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_4
execute if data storage ps:tmp part_data on passengers as @s[tag=part_4] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_5
execute if data storage ps:tmp part_data on passengers as @s[tag=part_5] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_6
execute if data storage ps:tmp part_data on passengers as @s[tag=part_6] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_7
execute if data storage ps:tmp part_data on passengers as @s[tag=part_7] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_8
execute if data storage ps:tmp part_data on passengers as @s[tag=part_8] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_9
execute if data storage ps:tmp part_data on passengers as @s[tag=part_9] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_10
execute if data storage ps:tmp part_data on passengers as @s[tag=part_10] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_11
execute if data storage ps:tmp part_data on passengers as @s[tag=part_11] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_12
execute if data storage ps:tmp part_data on passengers as @s[tag=part_12] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_13
execute if data storage ps:tmp part_data on passengers as @s[tag=part_13] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_14
execute if data storage ps:tmp part_data on passengers as @s[tag=part_14] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_15
execute if data storage ps:tmp part_data on passengers as @s[tag=part_15] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_16
execute if data storage ps:tmp part_data on passengers as @s[tag=part_16] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_17
execute if data storage ps:tmp part_data on passengers as @s[tag=part_17] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_18
execute if data storage ps:tmp part_data on passengers as @s[tag=part_18] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_19
execute if data storage ps:tmp part_data on passengers as @s[tag=part_19] run function ps:animation/inits/set_models
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_20
execute if data storage ps:tmp part_data on passengers as @s[tag=part_20] run function ps:animation/inits/set_models

#remove tag
tag @s remove new_obj