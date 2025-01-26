#clone data
$data modify storage ps:tmp ani_data set from storage ps:ani_data data[$(ani_id)]
#$scoreboard players set @s ps_ani_id $(ani_id)

execute on passengers as @s[type=interaction] run function ps:animation/inits/set_interaction_data

#add frames
execute store result storage ps:tmp frame_info.frame int 1 run scoreboard players set #frame_count ps 1
execute store result storage ps:tmp frame_info.obj_id int 1 run scoreboard players get @s ps_obj_id
execute if data storage ps:tmp ani_data.frames[0] run function ps:animation/inits/add_frames with storage ps:tmp frame_info