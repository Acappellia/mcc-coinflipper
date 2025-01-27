#change step
scoreboard players set #toss_status ct 4

execute if score #toss_coin_id ct matches 4 run return run function ct:special_coins/4/waitinput
execute if score #toss_coin_id ct matches 8 run return run function ct:special_coins/8_move
execute if score #toss_coin_id ct matches 9 run return run function ct:special_coins/9/waitinput
execute if score #toss_coin_id ct matches 10 run return run function ct:special_coins/10/waitinput
execute if score #toss_coin_id ct matches 11 run return run function ct:special_coins/11_clone
execute if score #toss_coin_id ct matches 14 run return run function ct:special_coins/14/trigger
execute if score #toss_coin_id ct matches 20 run return run function ct:special_coins/20/trigger

#no wait exit
schedule function ct:player/toss_end 5t replace