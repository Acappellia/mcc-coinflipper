data modify storage ct:tmp check_coin set from storage ct:tmp check_list[0]
execute if score #check_prev_front ct matches 0 if data storage ct:tmp check_coin{ishead:0} unless data storage ct:tmp check_coin{coin_id:12} run return run scoreboard players set #round_check_result ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #check_prev_front ct 0
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_front ct 1

data remove storage ct:tmp check_list[0]
execute if data storage ct:tmp check_list[0] run function ct:player/round_check/6b-1_checkloop