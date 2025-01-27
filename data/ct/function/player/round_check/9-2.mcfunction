data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #round_check_result_extra ct 0

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-1]
scoreboard players set #check_prev_back ct 0
scoreboard players set #check_prev_front ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #check_prev_back ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_back ct 1


data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-2]
execute unless score #check_prev_back ct matches 1 if data storage ct:tmp check_coin{ishead:0} unless data storage ct:tmp check_coin{coin_id:12} run return -1
execute unless score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:1} unless data storage ct:tmp check_coin{coin_id:12} run return -1
scoreboard players set #check_prev_back ct 0
scoreboard players set #check_prev_front ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #check_prev_back ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_back ct 1


data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-3]
execute unless score #check_prev_back ct matches 1 if data storage ct:tmp check_coin{ishead:0} unless data storage ct:tmp check_coin{coin_id:12} run return -1
execute unless score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:1} unless data storage ct:tmp check_coin{coin_id:12} run return -1
scoreboard players set #check_prev_back ct 0
scoreboard players set #check_prev_front ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #check_prev_back ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_front ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #check_prev_back ct 1

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-4]
execute unless score #check_prev_back ct matches 1 if data storage ct:tmp check_coin{ishead:0} unless data storage ct:tmp check_coin{coin_id:12} run return -1
execute unless score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:1} unless data storage ct:tmp check_coin{coin_id:12} run return -1

scoreboard players set #round_check_result_extra ct 1