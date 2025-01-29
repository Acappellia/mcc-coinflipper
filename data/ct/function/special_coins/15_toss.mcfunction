function ct:give_coin/random
scoreboard players add #toss_left ct 1

execute at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2
tellraw @a [{"text": "> ","color": "gray"}, {"text": "点击前往作者的神秘空间","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value": "https://space.bilibili.com/2907002"}}]