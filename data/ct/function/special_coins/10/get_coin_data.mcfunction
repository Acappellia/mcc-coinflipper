scoreboard players operation #to_flip_coin_id ct = @s coin_id
scoreboard players operation #to_flip_coin_ishead ct = @s coin_ishead

playsound item.armor.equip_leather player @a ~ ~ ~ 1 1

execute if score #to_flip_coin_ishead ct matches 1 unless score @s coin_id matches 2..3 run scoreboard players set @s coin_ishead 0
execute if score #to_flip_coin_ishead ct matches 1 on passengers as @e[type=item_display] run data merge entity @s {transformation:[1,0,0,0,0,-1,0,0,0,0,-1,0,0,0,0,2],interpolation_duration:5,start_interpolation:-1}
execute if score #to_flip_coin_ishead ct matches 0 unless score @s coin_id matches 2..3 run scoreboard players set @s coin_ishead 1
execute if score #to_flip_coin_ishead ct matches 0 on passengers as @e[type=item_display] run data merge entity @s {transformation:[-1,0,0,0,0,1,0,0,0,0,-1,0,0,0,0,2],interpolation_duration:5,start_interpolation:-1}