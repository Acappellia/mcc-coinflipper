execute if score #music_tick ct matches 165 as @n[type=marker,tag=table_mainui_slot_center] at @s run playsound cointosser:gamble record @a ~ ~ ~ 0.5 1
execute if score #music_tick ct matches 1090 as @n[type=marker,tag=table_mainui_slot_center] at @s run playsound cointosser:gamble_loop record @a ~ ~ ~ 0.5 1
scoreboard players add #music_tick ct 1
execute if score #music_tick ct matches 2486.. run scoreboard players set #music_tick ct 1089