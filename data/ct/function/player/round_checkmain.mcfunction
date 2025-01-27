scoreboard players set #round_status ct 2

scoreboard players reset #round_check_result ct
execute if score #current_round ct matches 1 run function ct:player/round_check/1-1

execute if score #round_check_result ct matches 0 run return run function ct:player/round_fail

execute as @e[type=marker,tag=table_hint_slot_2b] at @s run function ct:player/round_pass_effect
data merge entity @n[type=text_display,tag=round_hint2] {background:-702327008}

schedule function ct:player/round_checkextra 20t replace