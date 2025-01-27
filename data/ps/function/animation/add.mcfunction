#check if available
execute unless data storage ps:ani available[0] run return -1

#assign id
execute store result score #assigned_obj_id ps run data get storage ps:ani available[0]
data remove storage ps:ani available[0]

#summon
execute if score #assigned_obj_id ps matches 1 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,1],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 2 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,2],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 3 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,3],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 4 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,4],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 5 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,5],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 6 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,6],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 7 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,7],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 8 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,8],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}
execute if score #assigned_obj_id ps matches 9 run summon text_display ~ ~ ~ {alignment:"center",UUID:[I;0,0,0,9],Tags:["new_obj","ani"],Passengers:[\
{id:"item_display",Tags:["part_1"],glow_color_override:3565055},\
{id:"item_display",Tags:["part_2"]},\
{id:"item_display",Tags:["part_3"]},\
{id:"item_display",Tags:["part_4"]},\
{id:"item_display",Tags:["part_5"]},\
{id:"item_display",Tags:["part_6"]},\
{id:"item_display",Tags:["part_7"]},\
{id:"item_display",Tags:["part_8"]},\
{id:"item_display",Tags:["part_9"]},\
{id:"item_display",Tags:["part_10"]},\
{id:"item_display",Tags:["part_11"]},\
{id:"item_display",Tags:["part_12"]},\
{id:"item_display",Tags:["part_13"]},\
{id:"item_display",Tags:["part_14"]},\
{id:"item_display",Tags:["part_15"]},\
{id:"item_display",Tags:["part_16"]},\
{id:"item_display",Tags:["part_17"]},\
{id:"item_display",Tags:["part_18"]},\
{id:"item_display",Tags:["part_19"]},\
{id:"item_display",Tags:["part_20"]},\
{id:"interaction",Tags:["ani_interaction"]},\
]}

#assign id and set models
$data modify storage ps:tmp ani_data set from storage ps:ani_data data[$(ani_id)]
#$scoreboard players set @n[type=text_display,tag=new_obj,distance=..1] ps_ani_id $(ani_id)
execute as @n[type=text_display,tag=new_obj,distance=..1] run function ps:animation/inits/set_data

#add frames
execute unless data storage ps:ani frame_list[0] run data modify storage ps:ani frame_list append value {}
execute store result storage ps:tmp frame_info.frame int 1 run scoreboard players set #frame_count ps 1
execute store result storage ps:tmp frame_info.obj_id int 1 run scoreboard players get #assigned_obj_id ps
execute if data storage ps:tmp ani_data.frames[0] run function ps:animation/inits/add_frames with storage ps:tmp frame_info