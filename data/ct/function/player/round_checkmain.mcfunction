scoreboard players set #round_status ct 2

scoreboard players reset #round_check_result ct
execute if score #current_round ct matches 1 run function ct:player/round_check/1-1
execute if score #current_round ct matches 2 run function ct:player/round_check/2-1
execute if score #current_round ct matches 3 if score #round_variant ct matches 1 run function ct:player/round_check/3a-1
execute if score #current_round ct matches 3 if score #round_variant ct matches 2 run function ct:player/round_check/3b-1
execute if score #current_round ct matches 4 if score #round_variant ct matches 1 run function ct:player/round_check/4a-1
execute if score #current_round ct matches 4 if score #round_variant ct matches 2 run function ct:player/round_check/4b-1
execute if score #current_round ct matches 5 if score #round_variant ct matches 1 run function ct:player/round_check/5a-1
execute if score #current_round ct matches 5 if score #round_variant ct matches 2 run function ct:player/round_check/5b-1
execute if score #current_round ct matches 6 if score #round_variant ct matches 1 run function ct:player/round_check/6a-1
execute if score #current_round ct matches 6 if score #round_variant ct matches 2 run function ct:player/round_check/6b-1
execute if score #current_round ct matches 7 run function ct:player/round_check/7-1
execute if score #current_round ct matches 8 run function ct:player/round_check/8-1
execute if score #current_round ct matches 9 run function ct:player/round_check/9-1
execute if score #current_round ct matches 10 if score #round_variant ct matches 1 run function ct:player/round_check/10a-1
execute if score #current_round ct matches 10 if score #round_variant ct matches 2 run function ct:player/round_check/10b-1

execute if score #round_check_result ct matches 0 run return run function ct:player/round_fail

execute as @e[type=marker,tag=table_hint_slot_2b] at @s run function ct:player/round_pass_effect
data merge entity @n[type=text_display,tag=round_hint2] {background:-702327008}

schedule function ct:player/round_checkextra 20t replace