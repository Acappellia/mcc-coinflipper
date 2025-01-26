#return obj_id
data modify storage ps:ani available append value 999
execute store result storage ps:ani available[-1] int 1 run scoreboard players get @s ps_obj_id

#kill
execute on passengers run kill @s
kill @s