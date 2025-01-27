scoreboard players set #toss_status ct 5

scoreboard players add #coin_list_last ct 1
data modify storage ct:table coin_list append from storage ct:table coin_list[-1]

execute as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct at @s run summon text_display ~ ~ ~ \
{alignment:"center",Tags:["new_cloned","ani_dropped","landed_coin"],Passengers:[\
{id:"item_display",Tags:["part_1"],interpolation_duration:5,teleport_duration:5},\
{id:"interaction",Tags:["ani_interaction"],width:0.3,height:0.1},\
]}

execute as @n[type=text_display,tag=new_cloned] at @s run function ct:special_coins/11_clone_setup

#end toss
schedule function ct:player/toss_end 10t replace