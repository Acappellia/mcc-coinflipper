setblock 0 -64 0 white_shulker_box{Items:[{Slot:0b,id:"firework_star",count:1}]}
$data modify block 0 -64 0 Items[0].components set from storage ct:coin coins.$(coin_id).item.components

execute at @s run loot spawn ~ ~ ~ mine 0 -64 0
setblock 0 -64 0 bedrock