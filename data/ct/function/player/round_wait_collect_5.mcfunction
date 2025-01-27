scoreboard players set #round_status ct 4

execute at @e[type=marker,tag=table_nextlvl_slot_collectall] run summon text_display ~ ~ ~ {Tags:["next_level_hint_collect"],text:'"📦 收下所有硬币"',alignment:"center",transformation:[0,100,0,0,0,0,100,0,100,0,0,0,0,0,0,100],background:0}