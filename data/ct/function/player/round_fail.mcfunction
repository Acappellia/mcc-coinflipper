execute as @e[type=interaction,tag=boss] on vehicle run function ps:animation/update {ani_id:21}

execute as @e[type=marker,tag=table_hint_slot_2b] at @s run function ct:player/round_fail_effect

data merge entity @n[type=text_display,tag=round_hint2] {background:-479325935}
data merge entity @n[type=text_display,tag=round_hint3] {background:-479325935}

scoreboard players remove #player_life ct 1
execute if score #current_round ct = #max_rounds ct run scoreboard players set #player_life ct 0
execute at @e[type=marker,tag=table_mainui_slot_center] as @p run damage @s 1

execute if score #player_life ct matches 0 run return run schedule function ct:player/game_finished 30t replace
execute if score #current_round ct = #max_rounds ct run return run schedule function ct:player/game_finished 30t replace
schedule function ct:player/round_wait_collect_fail 30t replace