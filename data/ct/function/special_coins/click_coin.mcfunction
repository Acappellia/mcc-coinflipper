advancement revoke @s only ct:click_coin

playsound ui.button.click player @a ~ ~ ~ 0.5 1
kill @e[type=text_display,tag=newbie_hint]

execute if score #toss_coin_id ct matches 4 run function ct:special_coins/4/click

scoreboard players reset #ray_selected_slot ct
execute as @e[type=item_display,tag=part_1,distance=..10] run data merge entity @s {Glowing:0b}