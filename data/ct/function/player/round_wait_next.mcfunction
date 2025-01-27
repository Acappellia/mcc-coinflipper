scoreboard players set #round_status ct 5

playsound ui.button.click player @a ~ ~ ~ 0.5 1.3

function ct:give_coin/gened

playsound item.armor.equip_chain player @a ~ ~ ~ 1 1

execute at @e[type=text_display,tag=gened_coin] run particle ash ~ ~ ~ 0 0 0 0.1 10
execute as @e[type=text_display,tag=gened_coin] on passengers run kill @s
execute as @e[type=text_display,tag=gened_coin] run kill @s

kill @n[type=text_display,tag=next_level_hint_collect]

execute at @e[type=marker,tag=table_mainui_slot_next] run summon text_display ~ ~ ~ {Tags:["mainui_hint_next"],text:'"继续 ▶"',alignment:"center",transformation:[0,100,0,0,0,0,100,0,100,0,0,0,0,0,0,100],background:0}