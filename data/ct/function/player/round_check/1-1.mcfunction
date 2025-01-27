data modify storage ct:tmp check_list set from storage ct:table coin_list
scoreboard players set #round_check_result ct 0

execute if data storage ct:table coin_list[0] run function ct:player/round_check/1-1_checkloop