scoreboard players set #round_status ct 0
scoreboard players set #game_status ct 2

execute at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 2

execute at @e[type=text_display,tag=round_hint] run particle smoke ~ ~ ~ 1 0 0 0.02 10
kill @e[type=text_display,tag=round_hint]
execute at @e[type=text_display,tag=landed_coin] run particle smoke ~ ~ ~ 0 0 0 0.02 10
execute as @e[type=text_display,tag=landed_coin] on passengers run kill @s
execute as @e[type=text_display,tag=landed_coin] run kill @s

clear @a
title @a actionbar ""

execute if score #player_life ct matches ..0 at @e[type=marker,tag=table_mainui_slot_center] run summon text_display ~ ~ ~ {Tags:["main_ui"],text:'"你失败了…"',alignment:"center",transformation:[100,0,0,0,0,0,100,0,0,-100,0,0,0,0,0,80],background:0}
execute if score #player_life ct matches 1.. at @e[type=marker,tag=table_mainui_slot_center] run summon text_display ~ ~ ~ {Tags:["main_ui"],text:'"你是赢家"',alignment:"center",transformation:[100,0,0,0,0,0,100,0,0,-100,0,0,0,0,0,80],background:0}
execute if score #player_life ct matches ..0 as @e[type=interaction,tag=boss] on vehicle run function ps:animation/update {ani_id:23}
execute if score #player_life ct matches 1.. as @e[type=interaction,tag=boss] on vehicle run function ps:animation/update {ani_id:22}
execute if score #player_life ct matches 1.. at @e[type=marker,tag=table_mainui_slot_center] run playsound cointosser:victory player @a ~ ~ ~ 1 1
execute if score #player_life ct matches ..0 run schedule function ct:player/killed 15t replace

schedule function ct:player/game_reset 180t replace