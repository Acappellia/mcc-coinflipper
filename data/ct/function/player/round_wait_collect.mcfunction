execute at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.villager.ambient player @a ~ ~ ~ 1 2

execute at @e[type=text_display,tag=round_hint] run particle smoke ~ ~ ~ 0.6 0 0 0.02 6
kill @e[type=text_display,tag=round_hint]
execute at @e[type=text_display,tag=landed_coin] run particle smoke ~ ~ ~ 0 0 0 0.02 6
execute as @e[type=text_display,tag=landed_coin] on passengers run kill @s
execute as @e[type=text_display,tag=landed_coin] run kill @s

execute at @e[type=marker,tag=table_nextlvl_slot_title] run summon text_display ~ ~ ~ {Tags:["next_level_hint"],text:'"本轮奖励"',alignment:"center",transformation:[100,0,0,0,0,0,100,0,0,-100,0,0,0,0,0,80],background:0}

execute at @e[type=marker,tag=table_nextlvl_slot_reward1] run function ct:gen_coin/random

schedule function ct:player/round_wait_collect_2 5t replace