execute store result storage ct:tmp random_coin.coin_id int 1 store result score #random_coin_id ct run random value 1..30

#test
data modify storage ct:tmp random_coin.coin_id set value 1

function ct:gen_coin/spec with storage ct:tmp random_coin