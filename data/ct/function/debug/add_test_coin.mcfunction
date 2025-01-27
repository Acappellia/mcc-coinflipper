summon text_display ~ ~ ~ {alignment:"center",Tags:["new_dropped","ani_dropped"],Passengers:[\
{id:"item_display",Tags:["part_1"]},\
{id:"interaction",Tags:["ani_interaction"],width:0.3,height:0.1},\
]}

execute as @n[type=text_display,distance=..1,tag=gened_coin] on passengers as @s[type=item_display] run data modify entity @s item set from storage ct:coin coins.1.item