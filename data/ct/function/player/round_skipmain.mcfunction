scoreboard players set #round_status ct 2

execute as @e[type=marker,tag=table_hint_slot_2b] at @s run function ct:player/round_pass_effect
data merge entity @n[type=text_display,tag=round_hint2] {background:-702327008}

execute if score #current_round ct = #max_rounds ct run return run schedule function ct:player/game_finished 20t replace
schedule function ct:player/round_wait_collect 20t replace