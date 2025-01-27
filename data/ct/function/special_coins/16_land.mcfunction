scoreboard players set #round_check_result_extra ct 0

execute if score #toss_ishead ct matches 1 run return run schedule function ct:player/round_skipmain 10t replace
execute if score #toss_ishead ct matches 0 run schedule function ct:player/round_fail 10t replace