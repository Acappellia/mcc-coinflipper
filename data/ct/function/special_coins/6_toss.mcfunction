scoreboard players operation #check_even ct = #toss_left ct
scoreboard players operation #check_even ct %= #2 ct

execute if score #check_even ct matches 1 run function ct:special_coins/2_toss
execute if score #check_even ct matches 0 run function ct:special_coins/3_toss