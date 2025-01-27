data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #round_check_result ct 1
scoreboard players set #check_prev_front ct 0

execute if data storage ct:table coin_list[0] run function ct:player/round_check/6b-1_checkloop