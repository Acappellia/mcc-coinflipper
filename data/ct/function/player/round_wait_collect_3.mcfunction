execute at @e[type=marker,tag=table_nextlvl_slot_reward3] run function ct:gen_coin/random

execute if score #round_check_result_extra ct matches 1 run schedule function ct:player/round_wait_collect_4 15t replace
execute if score #round_check_result_extra ct matches 0 run schedule function ct:player/round_wait_collect_5 5t replace