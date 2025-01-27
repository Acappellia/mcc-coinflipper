execute store result score #random_coin_type ct run random value 1..100

execute if score #random_coin_type ct matches 1..33 store result storage ct:tmp random_coin.coin_id int 1 run scoreboard players set #random_coin_id ct 1
execute if score #random_coin_type ct matches 34..70 store result storage ct:tmp random_coin.coin_id int 1 store result score #random_coin_id ct run random value 2..8
execute if score #random_coin_type ct matches 71..90 store result storage ct:tmp random_coin.coin_id int 1 store result score #random_coin_id ct run random value 9..15
execute if score #random_coin_type ct matches 91..100 store result storage ct:tmp random_coin.coin_id int 1 store result score #random_coin_id ct run random value 16..23

function ct:gen_coin/spec with storage ct:tmp random_coin