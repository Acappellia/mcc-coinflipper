execute if score @s player_tp_cd matches 0 run function ct:tp/show_blackscreen_short
scoreboard players add @s player_tp_cd 1
execute if score @s player_tp_cd matches 12 run tp @s 32 -48 23 0 0
tag @s add in_tp