tag @s add to_insert
execute as @e[type=marker,distance=..10,tag=table_coin_slot] if score @s table_coin_index = #ray_selected_slot ct run tp @n[type=text_display,tag=to_insert,distance=..10] @s
tag @s remove to_insert