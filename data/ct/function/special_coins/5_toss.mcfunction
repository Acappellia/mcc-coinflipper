data remove storage ct:tmp check_coin
data modify storage ct:tmp check_coin set from storage ct:table coin_list[-1]

execute if data storage ct:tmp check_coin{ishead:1} run function ct:special_coins/2_toss
execute if data storage ct:tmp check_coin{ishead:0} run function ct:special_coins/3_toss