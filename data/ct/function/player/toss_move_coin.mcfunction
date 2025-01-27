execute as @e[type=marker,tag=table_coin_slot] if score @s table_coin_index = #coin_list_last ct at @s run tp @n[type=text_display,distance=..10,tag=new_dropped] @s

#end
tag @e[type=text_display,tag=new_dropped] remove new_dropped