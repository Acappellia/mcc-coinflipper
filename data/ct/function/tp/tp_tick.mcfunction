execute positioned 32 -48 19 as @s[distance=..3] run function ct:tp/lobby_to_underground
execute positioned 32 -58 23 as @s[distance=..3] run function ct:tp/underground_to_lobby

scoreboard players set @s[tag=!in_tp] player_tp_cd 0
tag @s remove in_tp