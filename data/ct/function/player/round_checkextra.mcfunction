scoreboard players set #round_status ct 3

scoreboard players set #round_status ct 2

scoreboard players reset #round_check_result_extra ct
execute if score #current_round ct matches 1 run function ct:player/round_check/1-2

execute if score #round_check_result_extra ct matches 0 as @e[type=marker,tag=table_hint_slot_3b] at @s run function ct:player/round_fail_effect
execute if score #round_check_result_extra ct matches 0 run data merge entity @n[type=text_display,tag=round_hint3] {background:-479325935}

execute if score #round_check_result_extra ct matches 1 as @e[type=marker,tag=table_hint_slot_3b] at @s run function ct:player/round_pass_effect
execute if score #round_check_result_extra ct matches 1 run data merge entity @n[type=text_display,tag=round_hint3] {background:-702327008}

execute if score #current_round ct = #max_rounds ct run return run schedule function ct:player/game_finished 30t replace
schedule function ct:player/round_wait_collect 30t replace