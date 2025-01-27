execute on passengers as @s[type=item_display] run data modify entity @s item set from storage ct:coin coins.11.item
execute on passengers as @s[type=item_display] run data modify entity @s transformation set from entity @n[type=item_display,distance=0.1..1] transformation
execute on passengers as @s[type=item_display] run data modify entity @s start_interpolation set from entity @n[type=item_display,distance=0.1..1] start_interpolation

particle end_rod ~ ~ ~ 0 0 0 0.05 10

scoreboard players operation @s coin_id = #toss_coin_id ct
scoreboard players operation @s coin_ishead = #toss_ishead ct

tag @s remove new_cloned