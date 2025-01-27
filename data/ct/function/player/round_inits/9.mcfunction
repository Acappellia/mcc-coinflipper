scoreboard players set #toss_left ct 6

execute at @e[type=marker,tag=table_hint_slot_0] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint0"],text:'"【第9/10轮】"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
execute at @e[type=marker,tag=table_hint_slot_1] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint1"],text:'"抛出六枚硬币"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,100],background:2113929216}
execute at @e[type=marker,tag=table_hint_slot_2b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint2"],text:'"连续四枚硬币相同"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
execute at @e[type=marker,tag=table_hint_slot_3b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint3"],text:'"【奖励】最后四枚硬币相同"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}