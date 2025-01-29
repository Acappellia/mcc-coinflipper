execute store result storage ct:tmp return_coin.coin_id int 1 run scoreboard players get @s coin_id
execute if score #toss_ishead ct matches 1 run playsound item.armor.equip_leather player @a ~ ~ ~ 0.5 1
execute if score #toss_ishead ct matches 0 run playsound entity.shulker_bullet.hit player @a ~ ~ ~ 0.5 1
execute if score #toss_ishead ct matches 0 run particle smoke ~ ~ ~ 0 0 0 0.02 10
execute on passengers run kill @s
kill @s

execute if score #toss_ishead ct matches 1 run function ct:give_coin/spec with storage ct:tmp return_coin
execute if score #toss_ishead ct matches 1 run scoreboard players add #toss_left ct 1
execute if score #toss_ishead ct matches 1 at @n[type=marker,tag=table_mainui_slot_center] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 2