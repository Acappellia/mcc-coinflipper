playsound ui.button.click player @a ~ ~ ~ 0.5 1.3

kill @e[type=text_display,tag=main_ui]

scoreboard players set #game_status ct 1
scoreboard players set #player_life ct 2
scoreboard players set #current_round ct 1

function ct:give_coin/spec {coin_id:1}
function ct:give_coin/spec {coin_id:1}
function ct:give_coin/spec {coin_id:1}
function ct:give_coin/spec {coin_id:1}
function ct:give_coin/spec {coin_id:1}
function ct:give_coin/spec {coin_id:2}
function ct:give_coin/spec {coin_id:3}

execute as @e[type=interaction,tag=boss] on vehicle run function ps:animation/update {ani_id:17}

scoreboard players reset #music_tick ct

schedule function ct:player/round_start 165