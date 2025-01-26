#add next frames
execute if data storage ps:tmp frame_data.next run function ps:animation/ticks/set_next with storage ps:tmp frame_data.next
execute if data storage ps:tmp frame_data.next run return 1

execute if data storage ps:tmp frame_data.keep_alive run function ps:animation/drop
execute unless data storage ps:tmp frame_data.keep_alive run function ps:animation/kill