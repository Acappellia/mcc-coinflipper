data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #check_1-2_counter ct 0
scoreboard players set #round_check_result_extra ct 0

execute if data storage ct:table coin_list[0] run function ct:player/round_check/1-2_checkloop