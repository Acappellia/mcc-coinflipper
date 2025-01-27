execute store result score #toss_ani_id ct store result storage ct:tmp toss_result.ani_id int 1 run random value 8..15
data modify storage ct:tmp toss_result.ishead set value 0
scoreboard players set #toss_ishead ct 0