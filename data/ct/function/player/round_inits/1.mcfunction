scoreboard players set #max_toss ct 3

execute at @e[type=marker,tag=table_hint_slot_1] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint1"],text:'"抛出三枚硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
#execute at @e[type=marker,tag=table_coin_slot,tag=table_hint_slot_2a] run summon text_display ~ ~ ~ {Tags:["round_hint"],text:'"抛出三枚硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
execute at @e[type=marker,tag=table_hint_slot_2b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint2"],text:'"至少一枚是正面"',alignment:"center",transformation:[1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1]}
#execute at @e[type=marker,tag=table_coin_slot,tag=table_hint_slot_3a] run summon text_display ~ ~ ~ {Tags:["round_hint"],text:'"抛出三枚硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
execute at @e[type=marker,tag=table_hint_slot_3b] run summon text_display ~ ~ ~ {Tags:["round_hint","round_hint3"],text:'"【奖励】至少两枚是正面"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}
execute at @e[type=marker,tag=table_mainui_slot_center] run summon text_display ~ ~ ~ {Tags:["newbie_hint"],text:'"手持硬币右键桌面抛出"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}