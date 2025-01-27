execute unless entity @e[type=marker,tag=table_mainui_slot_center,distance=..5] run return -1

scoreboard players reset #ray_selected_slot ct
execute as @e[type=item_display,tag=part_1,distance=..10] run data merge entity @s {Glowing:0b}

tag @s add ray_caster
function ct:special_coins/ray/ray
tag @s remove ray_caster