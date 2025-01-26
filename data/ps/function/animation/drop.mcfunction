#return obj_id
data modify storage ps:ani available append value 999
execute store result storage ps:ani available[-1] int 1 run scoreboard players get @s ps_obj_id

#summon new vihicle
execute at @s run summon text_display ~ ~ ~ {alignment:"center",Tags:["new_dropped","ani_dropped"]}
execute at @s on passengers run ride @s mount @n[type=text_display,distance=..1,tag=new_dropped]

#trigger dropped function
execute at @s as @n[type=text_display,distance=..1,tag=new_dropped] run function ct:player/toss_coin_land

#kill
kill @s