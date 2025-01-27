execute if score #toss_ishead ct matches 1 run scoreboard players add #toss_left ct 1
#execute if score #toss_ishead ct matches 1 at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2
execute if score #toss_ishead ct matches 1 as @a at @s run playsound cointosser:haruhikage record @s ~ ~ ~ 1 1

execute if score #toss_ishead ct matches 0 run scoreboard players remove #toss_left ct 1
execute if score #toss_ishead ct matches 0 as @a at @s run playsound cointosser:saki_quit record @s ~ ~ ~ 1 1