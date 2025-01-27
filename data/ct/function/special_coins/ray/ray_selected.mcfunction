scoreboard players operation #ray_selected_slot ct = @s table_coin_index
execute as @n[tag=part_1,type=item_display,distance=..0.5] run data merge entity @s {Glowing:1b}

execute unless entity @n[tag=landed_coin,type=text_display,distance=..0.1] run return -1

scoreboard players operation #ray_selected_coin_id ct = @n[tag=landed_coin,type=text_display,distance=..0.5] coin_id
scoreboard players operation #ray_selected_coin_ishead ct = @n[tag=landed_coin,type=text_display,distance=..0.5] coin_ishead

execute as @p[distance=..10,tag=ray_caster] run function ct:special_coins/ray/ray_showtitle