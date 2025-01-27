data modify storage ct:tmp check_coin set from storage ct:tmp check_list[0]
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players add #check_1-2_counter ct 1
execute if score #check_1-2_counter ct matches 2 run return run scoreboard players set #round_check_result_extra ct 1
data remove storage ct:tmp check_list[0]
execute if data storage ct:tmp check_list[0] run function ct:player/round_check/1-2_checkloop