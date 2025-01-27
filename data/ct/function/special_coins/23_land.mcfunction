particle explosion_emitter ~ ~ ~ 0 0 0 0 2
playsound entity.generic.explode player @a ~ ~ ~ 1 0.8

data remove storage ct:table coin_list
data modify storage ct:table coin_list set value []

execute as @e[type=text_display,tag=landed_coin] on passengers run kill @s
execute as @e[type=text_display,tag=landed_coin] run kill @s

schedule function ct:player/toss_end 40t replace