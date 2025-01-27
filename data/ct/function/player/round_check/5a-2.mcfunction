data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #round_check_result_extra ct 0

data remove storage ct:tmp check_coin
data remove storage ct:tmp check_coin_2
data modify storage ct:tmp check_coin set from storage ct:tmp check_list[0]
data modify storage ct:tmp check_coin_2 set from storage ct:tmp check_list[1]

execute if data storage ct:tmp check_coin{ishead:1} if data storage ct:tmp check_coin_2{ishead:1} run scoreboard players set #round_check_result_extra ct 1
execute if data storage ct:tmp check_coin{ishead:0} if data storage ct:tmp check_coin_2{ishead:0} run scoreboard players set #round_check_result_extra ct 1