execute if score #toss_ishead ct matches 1 run function ct:give_coin/random

execute if score #toss_ishead ct matches 0 run function ct:give_coin/spec {coin_id:1}

scoreboard players remove #total_player_coins ct 1
execute if score #total_player_coins ct matches 1.. run function ct:special_coins/22_land_loop