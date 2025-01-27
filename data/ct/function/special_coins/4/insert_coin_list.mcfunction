$data modify storage ct:table coin_list insert $(index) from storage ct:table coin_list[-1]
data remove storage ct:table coin_list[-1]