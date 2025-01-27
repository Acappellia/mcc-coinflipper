execute if score #toss_ishead ct matches 1 run function ct:give_coin/random
execute if score #toss_ishead ct matches 0 run function ct:give_coin/spec {coin_id:1}

scoreboard players remove #list_coins ct 1
execute if score #list_coins ct matches 1.. run function ct:special_coins/21_land_loop