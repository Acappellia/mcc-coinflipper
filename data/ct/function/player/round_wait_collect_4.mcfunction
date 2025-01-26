execute at @e[type=marker,tag=table_nextlvl_slot_reward4] run function ct:gen_coin/random

execute at @e[type=marker,tag=table_nextlvl_slot_collectall] run summon text_display ~ ~ ~ {Tags:["next_level_hint_collect"],text:'"收下所有硬币"',alignment:"center",transformation:[2,0,0,0,0,2,0,0,0,0,2,0,0,0,0,1]}