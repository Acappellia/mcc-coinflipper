execute if score #toss_ishead ct matches 1 run scoreboard players add #toss_left ct 1
#execute if score #toss_ishead ct matches 1 at @e[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2
execute if score #toss_ishead ct matches 1 at @e[type=marker,tag=table_mainui_slot_center] run playsound cointosser:haruhikage record @a ~ ~ ~ 1 1

execute if score #toss_ishead ct matches 0 run scoreboard players remove #toss_left ct 1
execute if score #toss_ishead ct matches 0 at @e[type=marker,tag=table_mainui_slot_center] run playsound cointosser:saki_quit record @a ~ ~ ~ 1 1