scoreboard players set #round_status ct 6

kill @e[type=text_display,tag=mainui_hint_next]
kill @e[type=text_display,tag=next_level_hint]

scoreboard players add #current_round ct 1

schedule function ct:player/round_start 10t replace