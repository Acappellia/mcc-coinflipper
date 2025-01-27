playsound ui.button.click player @a ~ ~ ~ 0.5 1.3

kill @e[type=text_display,tag=main_ui]

scoreboard players set #game_status ct 1
scoreboard players set #player_life ct 3
scoreboard players set #current_round ct 1

function ct:player/round_start