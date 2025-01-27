execute if score #toss_ishead ct matches 1 run scoreboard players add #toss_left ct 1
execute if score #toss_ishead ct matches 1 as @a at @s run playsound ct:haruhikage record @s ~ ~ ~ 1 1

execute if score #toss_ishead ct matches 0 run scoreboard players remove #toss_left ct 1
execute if score #toss_ishead ct matches 0 as @a at @s run playsound ct:saki_quit record @s ~ ~ ~ 1 1