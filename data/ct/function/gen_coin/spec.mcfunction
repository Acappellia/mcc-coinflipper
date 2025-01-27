playsound block.chain.place player @a ~ ~ ~ 1 1
particle firework ~ ~ ~ 0 0 0 0.1 10

summon text_display ~ ~ ~ {alignment:"center",Tags:["gened_coin"],Passengers:[\
{id:"item_display",Tags:["part_1"],transformation:[-1,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,2]},\
{id:"interaction",Tags:["ani_interaction"],width:0.3,height:0.1},\
]}

$execute as @n[type=text_display,distance=..1,tag=gened_coin] on passengers as @s[type=item_display] run data modify entity @s item set from storage ct:coin coins.$(coin_id).item

$data modify storage ct:table gened_coin append value $(coin_id)