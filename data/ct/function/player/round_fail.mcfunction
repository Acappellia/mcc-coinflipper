execute at @e[type=marker,tag=table_coin_slot,tag=table_hint_slot_2b] run function ct:player/round_fail_effect

data merge entity @n[type=text_display,tag=round_hint2] {background:1299058961}
data merge entity @n[type=text_display,tag=round_hint3] {background:1299058961}

scoreboard players remove #player_life ct 1
execute as @a run damage @s 1

execute if score #player_life ct matches 0 run return run schedule function ct:player/game_finished 30t replace
execute if score #current_round ct = #max_rounds ct run return run schedule function ct:player/game_finished 30t replace
schedule function ct:player/round_wait_collect_fail 30t replace