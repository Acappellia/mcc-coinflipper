data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #round_check_result_extra ct 0

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-1]
execute unless data storage ct:tmp check_coin{ishead:0} unless data storage ct:tmp check_coin{coin_id:12} run return -1

data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[-2]
execute if data storage ct:tmp check_coin{ishead:0} run scoreboard players set #round_check_result_extra ct 1
execute if data storage ct:tmp check_coin{coin_id:12} run scoreboard players set #round_check_result_extra ct 1