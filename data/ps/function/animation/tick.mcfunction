#check object uuid
execute if data storage ps:ani frame_list[0].obj_1 as 0-0-0-0-1 run function ps:animation/ticks/animate_1
execute if data storage ps:ani frame_list[0].obj_2 as 0-0-0-0-2 run function ps:animation/ticks/animate_2
execute if data storage ps:ani frame_list[0].obj_3 as 0-0-0-0-3 run function ps:animation/ticks/animate_3
execute if data storage ps:ani frame_list[0].obj_4 as 0-0-0-0-4 run function ps:animation/ticks/animate_4
execute if data storage ps:ani frame_list[0].obj_5 as 0-0-0-0-5 run function ps:animation/ticks/animate_5
execute if data storage ps:ani frame_list[0].obj_6 as 0-0-0-0-6 run function ps:animation/ticks/animate_6
execute if data storage ps:ani frame_list[0].obj_7 as 0-0-0-0-7 run function ps:animation/ticks/animate_7
execute if data storage ps:ani frame_list[0].obj_8 as 0-0-0-0-8 run function ps:animation/ticks/animate_8
execute if data storage ps:ani frame_list[0].obj_9 as 0-0-0-0-9 run function ps:animation/ticks/animate_9

data remove storage ps:ani frame_list[0]