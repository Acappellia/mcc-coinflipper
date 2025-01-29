execute if score #toss_ishead ct matches 1 run function ct:give_coin/random
execute if score #toss_ishead ct matches 1 run function ct:give_coin/random

execute if score #toss_ishead ct matches 0 run scoreboard players add #toss_left ct 2
execute if score #toss_ishead ct matches 0 at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2