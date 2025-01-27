data modify storage ct:tmp check_coin set from storage ct:tmp check_list[0]
execute if score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:1} run return run scoreboard players set #round_check_result ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #check_prev_front ct 0

data remove storage ct:tmp check_list[0]
execute if data storage ct:tmp check_list[0] run function ct:player/round_check/6a-1_checkloop