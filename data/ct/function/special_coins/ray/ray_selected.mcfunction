scoreboard players operation #ray_selected_slot ct = @s table_coin_index
execute as @n[tag=part_1,type=item_display,distance=..0.5] run data merge entity @s {Glowing:1b}

scoreboard players operation #ray_selected_coin_id ct = @n[tag=landed_coin,type=text_display,distance=..0.5] coin_id
scoreboard players operation #ray_selected_coin_ishead ct = @n[tag=landed_coin,type=text_display,distance=..0.5] coin_ishead

function ct:special_coins/ray/ray_showtitle