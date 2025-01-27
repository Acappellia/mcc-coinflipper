scoreboard players set #toss_left ct 5

execute at @e[type=marker,tag=table_hint_slot_0] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint0"],text:'"【第8/10轮】"',alignment:"center",transformation:[0,0,-100,0,0,100,0,0,100,0,0,0,0,0,0,120],background:0}
execute at @e[type=marker,tag=table_hint_slot_1] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint1"],text:'"抛出五枚硬币"',alignment:"center",transformation:[0,0,-100,0,0,100,0,0,100,0,0,0,0,0,0,60],background:2113929216}
execute at @e[type=marker,tag=table_hint_slot_2b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint2"],text:'"硬币队列形成对称图样"',alignment:"center",transformation:[0,0,-100,0,0,100,0,0,100,0,0,0,0,0,0,120],background:0}
execute at @e[type=marker,tag=table_hint_slot_3b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint3"],text:'"【奖励】硬币队列对称，且最后一枚为反面"',alignment:"center",transformation:[0,0,-100,0,0,100,0,0,100,0,0,0,0,0,0,120],background:0}