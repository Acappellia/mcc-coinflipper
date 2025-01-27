execute unless data storage ct:table gened_coin[0] run return -1

data modify storage ct:tmp gened_coin.coin_id set from storage ct:table gened_coin[0]
data remove storage ct:table gened_coin[0]

function ct:give_coin/spec with storage ct:tmp gened_coin

function ct:give_coin/gened