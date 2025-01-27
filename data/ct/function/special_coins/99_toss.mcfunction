execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".ct_coin run kill @s

execute as @a run clear @s firework_star[custom_data~{ct_coin:1b}]

playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 0.8