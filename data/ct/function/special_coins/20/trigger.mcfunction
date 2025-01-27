scoreboard players set #toss_status ct 5

execute if data storage ct:table coin_list[-2] run function ct:special_coins/20/loop

#end toss
schedule function ct:player/toss_end 10t replace