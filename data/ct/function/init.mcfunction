gamerule maxCommandChainLength 200000

#init main scoreboard & values
scoreboard objectives add ct dummy
execute unless score #toss_status ct matches 0.. run scoreboard players set #toss_status ct 0
execute unless score #round_status ct matches 0.. run scoreboard players set #round_status ct 0
execute unless score #game_status ct matches 0.. run scoreboard players set #game_status ct 0

#toss status
# 0 cant do anything
# 1 ready to throw
# 2 waiting throw result
# 3 appending new coin to list
# 4 waiting extra player input
# 5 extra input movement
# 6 next throw or round end (no tick)

#round status
# 0 cant do anything
# 1 tossing
# 2 round end, checking primary condition, giving rewards/punishments
# 3 checking extra condition, giving rewards
# 4 waiting player to collect reward
# 5 waiting player to click next
# 6 next round or end game (no tick)

#game status
# 0 not playing the game, waiting player to click start
# 1 playing the game
# 2 player finished game, waiting player to restart (no tick)

execute unless score #max_rounds ct matches 0.. run scoreboard players set #max_rounds ct 10

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

#init coin data
function ct:inits/coin

#init scoreboards
scoreboard objectives add table_coin_index dummy
scoreboard objectives add coin_id dummy
scoreboard objectives add coin_ishead dummy