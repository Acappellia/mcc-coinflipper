data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #round_check_result_extra ct 0

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-1]
scoreboard players set #check_prev_front ct 0
execute if data storage ct:tmp check_coin{ishead:1} run scoreboard players set #check_prev_front ct 1

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-2]
execute if score #check_prev_front ct matches 0 if data storage ct:tmp check_coin{ishead:1} run return -1
execute if score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:0} run return -1

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-3]
execute if score #check_prev_front ct matches 0 if data storage ct:tmp check_coin{ishead:1} run return -1
execute if score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:0} run return -1

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-4]
execute if score #check_prev_front ct matches 0 if data storage ct:tmp check_coin{ishead:1} run return -1
execute if score #check_prev_front ct matches 1 if data storage ct:tmp check_coin{ishead:0} run return -1

scoreboard players set #round_check_result_extra ct 1