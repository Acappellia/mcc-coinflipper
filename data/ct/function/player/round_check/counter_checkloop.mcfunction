data modify storage ct:tmp check_coin set from storage ct:tmp check_list[0]
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players add #check_front_counter ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players add #check_back_counter ct 1

data remove storage ct:tmp check_list[0]
execute if data storage ct:tmp check_list[0] run function ct:player/round_check/counter_checkloop