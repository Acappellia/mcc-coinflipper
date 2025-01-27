
execute store result storage ct:tmp return_coin.coin_id int 1 run scoreboard players get @s coin_id
playsound item.armor.equip_leather player @a ~ ~ ~ 0.5 1
execute on passengers run kill @s
kill @s

function ct:give_coin/spec with storage ct:tmp return_coin