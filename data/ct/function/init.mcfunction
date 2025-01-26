gamerule maxCommandChainLength 200000

#init main scoreboard
scoreboard objectives add ct dummy

#forceload
forceload add 0 0 0 0

#init slow tick
schedule function ct:slowtick 20t append

#init team
team add players
team modify players color gray
team modify players collisionRule never
team modify players seeFriendlyInvisibles true

#init ani data
scoreboard objectives add ps dummy
scoreboard objectives add ps_obj_id dummy
scoreboard objectives add ps_ani_id dummy
execute unless data storage ps:ani available run data modify storage ps:ani available set value [1,2,3,4,5,6,7,8,9]

#init scoreboards
scoreboard objectives add table_coin_index dummy