#set obj_id
scoreboard players operation @s ps_obj_id = #assigned_obj_id ps

#set interaction
execute on passengers as @s[type=interaction] run function ps:animation/inits/set_interaction_data

#set parts model
data remove storage ps:tmp part_data
data modify storage ps:tmp part_data set from storage ps:tmp ani_data.parts.part_1
execute if data storage ps:tmp part_data on passengers as @s[tag=part_1] run function ps:animation/inits/set_models
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

#remove tag
tag @s remove new_obj