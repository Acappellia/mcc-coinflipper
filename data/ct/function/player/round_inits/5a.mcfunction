scoreboard players set #toss_left ct 4

execute at @e[type=marker,tag=table_hint_slot_0] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint0"],text:'"【第5/10轮】"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
execute at @e[type=marker,tag=table_hint_slot_1] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint1"],text:'"抛出四枚硬币"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,100],background:2113929216}
execute at @e[type=marker,tag=table_hint_slot_2b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint2"],text:'"最后两枚相同"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
execute at @e[type=marker,tag=table_hint_slot_3b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint3"],text:'"【奖励】最初两枚也相同"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}