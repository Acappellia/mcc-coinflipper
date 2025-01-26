scoreboard players set #round_status ct 0
scoreboard players set #game_status ct 2

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 0.8

execute at @e[type=text_display,tag=round_hint] run particle ash ~ ~ ~ 0 0 0 0.1 10
kill @e[type=text_display,tag=round_hint]
execute at @e[type=text_display,tag=landed_coin] run particle ash ~ ~ ~ 0 0 0 0.1 10
execute as @e[type=text_display,tag=landed_coin] on passengers run kill @s
execute as @e[type=text_display,tag=landed_coin] run kill @s

execute at @e[type=marker,tag=table_mainui_slot_center] run summon text_display ~ ~ ~ {Tags:["main_ui"],text:'"游戏结束"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
execute at @e[type=marker,tag=table_mainui_slot_startgame] run summon text_display ~ ~ ~ {Tags:["main_ui"],text:'"重新开始"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}