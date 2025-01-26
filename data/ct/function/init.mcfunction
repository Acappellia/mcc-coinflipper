gamerule maxCommandChainLength 200000

#init main scoreboard
scoreboard objectives add ct dummy

#forceload
forceload add 0 0 0 0

#init slow tick
schedule function ct:slowtick 20t append