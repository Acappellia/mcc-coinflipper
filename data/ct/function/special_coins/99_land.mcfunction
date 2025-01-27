execute if score #toss_ishead ct matches 1 run scoreboard players set #toss_left ct 3
execute if score #toss_ishead ct matches 1 run function ct:give_coin/random
execute if score #toss_ishead ct matches 1 run function ct:give_coin/random
execute if score #toss_ishead ct matches 1 run function ct:give_coin/random

execute if score #toss_ishead ct matches 0 run scoreboard players set #toss_left ct 1
execute if score #toss_ishead ct matches 0 run function ct:give_coin/spec {coin_id:16}