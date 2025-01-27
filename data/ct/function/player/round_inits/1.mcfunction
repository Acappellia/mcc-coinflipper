scoreboard players set #toss_left ct 3

execute at @e[type=marker,tag=table_hint_slot_0] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint0"],text:'"【第1/10轮】"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
execute at @e[type=marker,tag=table_hint_slot_1] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint1"],text:'"抛出三枚硬币"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,100],background:2113929216}
#execute at @e[type=marker,tag=table_coin_slot,tag=table_hint_slot_2a] run summon text_display ~ ~ ~ {Tags:["round_hint"],text:'"抛出三枚硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
execute at @e[type=marker,tag=table_hint_slot_2b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint2"],text:'"至少一枚是正面"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
#execute at @e[type=marker,tag=table_coin_slot,tag=table_hint_slot_3a] run summon text_display ~ ~ ~ {Tags:["round_hint"],text:'"抛出三枚硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
execute at @e[type=marker,tag=table_hint_slot_3b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint3"],text:'"【奖励】至少两枚是正面"',alignment:"center",transformation:[100,0,0,0,0,100,0,0,0,0,100,0,0,0,0,180],background:0}
execute at @e[type=marker,tag=table_mainui_slot_center] run summon text_display ~ ~ ~ {Tags:["newbie_hint"],text:'"手持硬币右键桌面抛出"',alignment:"center",transformation:[100,0,0,0,0,0,100,0,0,-100,0,0,0,0,0,80],background:0}