data modify entity @s item set value {id:"firework_star",count:1,components:{item_model:"firework_star",firework_explosion:{shape:"small_ball",colors:[I;0]}}}
data modify entity @s Tags prepend from storage ps:tmp part_data.name
data modify entity @s item.components."minecraft:item_model" set from storage ps:tmp part_data.item_model
data modify entity @s item.components."minecraft:firework_explosion".colors[0] set from storage ps:tmp part_data.firework_color
data modify entity @s transformation set from storage ps:tmp part_data.init_pos