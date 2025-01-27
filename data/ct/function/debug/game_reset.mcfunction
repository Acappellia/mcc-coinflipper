scoreboard players set #toss_status ct 0
scoreboard players set #round_status ct 0
scoreboard players set #game_status ct 0

data remove storage ct:table gened_coin
data modify storage ct:table gened_coin set value []

data remove storage ct:table coin_list
data modify storage ct:table coin_list set value []

kill @e[type=text_display,tag=round_hint]
kill @e[type=text_display,tag=newbie_hint]
kill @e[type=text_display,tag=next_level_hint]
kill @e[type=text_display,tag=next_level_hint_collect]
kill @e[type=text_display,tag=mainui_hint_next]
kill @e[type=text_display,tag=main_ui]

execute as @e[type=text_display,tag=landed_coin] on passengers run kill @s
execute as @e[type=text_display,tag=landed_coin] run kill @s

execute as @e[type=text_display,tag=gened_coin] on passengers run kill @s
execute as @e[type=text_display,tag=gened_coin] run kill @s

execute at @e[type=marker,tag=table_mainui_slot_startgame] run summon text_display ~ ~ ~ {Tags:["main_ui"],text:'"▶ 开始游戏"',alignment:"center",transformation:[0,100,0,0,0,0,100,0,100,0,0,0,0,0,0,50],background:0}

clear @a
title @a actionbar ""