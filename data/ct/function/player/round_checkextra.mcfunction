scoreboard players set #round_status ct 3

execute as @e[type=interaction,tag=boss] on vehicle run function ps:animation/update {ani_id:20}

scoreboard players reset #round_check_result_extra ct
execute if score #current_round ct matches 1 run function ct:player/round_check/1-2
execute if score #current_round ct matches 2 run function ct:player/round_check/2-2
execute if score #current_round ct matches 3 if score #round_variant ct matches 1 run function ct:player/round_check/3a-2
execute if score #current_round ct matches 3 if score #round_variant ct matches 2 run function ct:player/round_check/3b-2
execute if score #current_round ct matches 4 if score #round_variant ct matches 1 run function ct:player/round_check/4a-2
execute if score #current_round ct matches 4 if score #round_variant ct matches 2 run function ct:player/round_check/4b-2
execute if score #current_round ct matches 5 if score #round_variant ct matches 1 run function ct:player/round_check/5a-2
execute if score #current_round ct matches 5 if score #round_variant ct matches 2 run function ct:player/round_check/5b-2
execute if score #current_round ct matches 6 if score #round_variant ct matches 1 run function ct:player/round_check/6a-2
execute if score #current_round ct matches 6 if score #round_variant ct matches 2 run function ct:player/round_check/6b-2
execute if score #current_round ct matches 7 if score #round_variant ct matches 1 run function ct:player/round_check/7a-2
execute if score #current_round ct matches 7 if score #round_variant ct matches 2 run function ct:player/round_check/7b-2
execute if score #current_round ct matches 8 if score #round_variant ct matches 1 run function ct:player/round_check/8a-2
execute if score #current_round ct matches 8 if score #round_variant ct matches 2 run function ct:player/round_check/8b-2
execute if score #current_round ct matches 9 run function ct:player/round_check/9-2
execute if score #current_round ct matches 10 if score #round_variant ct matches 1 run function ct:player/round_check/10a-2
execute if score #current_round ct matches 10 if score #round_variant ct matches 2 run function ct:player/round_check/10b-2

execute if score #round_check_result_extra ct matches 0 as @e[type=marker,tag=table_hint_slot_3b] at @s run function ct:player/round_fail_effect
execute if score #round_check_result_extra ct matches 0 run data merge entity @n[type=text_display,tag=round_hint3] {background:-479325935}

execute if score #round_check_result_extra ct matches 1 as @e[type=marker,tag=table_hint_slot_3b] at @s run function ct:player/round_pass_effect
execute if score #round_check_result_extra ct matches 1 run data merge entity @n[type=text_display,tag=round_hint3] {background:-702327008}

execute if score #current_round ct = #max_rounds ct run return run schedule function ct:player/game_finished 30t replace
schedule function ct:player/round_wait_collect 30t replace