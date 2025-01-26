execute store result score #random_coin_id ct run random value 1..30

execute if score #random_coin_id ct matches 1..30 run give @s firework_star[custom_data={ct_coin:1b,coin_id:1},item_model="coin_1",rarity="common",item_name='"硬币"',lore=['[{"text": "普通的一枚硬币","color": "gray"}]','""','[{"text": "抛出去之前，谁也不知道它将落在哪一面","color": "white"}]']] 1