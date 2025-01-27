data modify storage ct:tmp check_coin set from storage ct:tmp check_list[0]

execute unless score #check_prev_back ct matches 1 if data storage ct:tmp check_coin{ishead:0} unless data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_max_continue ct 0
execute unless score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:1} unless data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_max_continue ct 0
scoreboard players add #check_max_continue ct 1

execute if score #check_max_continue ct matches 4.. run return run scoreboard players set #round_check_result ct 1

scoreboard players set #check_prev_back ct 0
scoreboard players set #check_prev_front ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #check_prev_back ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_back ct 1

data remove storage ct:tmp check_list[0]
execute if data storage ct:tmp check_list[0] run function ct:player/round_check/9-1_checkloop