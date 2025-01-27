#change step
scoreboard players set #toss_status ct 4

execute if score #toss_coin_id ct matches 4 run return run function ct:special_coins/4/waitinput

#no wait exit
schedule function ct:player/toss_end 5t replace