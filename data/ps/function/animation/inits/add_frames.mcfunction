#add to frame_list
$execute unless data storage ps:ani frame_list[$(frame)] run data modify storage ps:ani frame_list append value {}
$data modify storage ps:ani frame_list[$(frame)].obj_$(obj_id) set from storage ps:tmp ani_data.frames[0]

#loop
data remove storage ps:tmp ani_data.frames[0]
execute store result storage ps:tmp frame_info.frame int 1 run scoreboard players add #frame_count ps 1
execute if data storage ps:tmp ani_data.frames[0] run function ps:animation/inits/add_frames with storage ps:tmp frame_info