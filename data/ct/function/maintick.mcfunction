effect give @a saturation infinite 0 true
effect give @a resistance infinite 9 true
gamemode adventure @a[gamemode=survival]
team join players @a

#ani tick
execute if data storage ps:ani frame_list[0] run function ps:animation/tick

#health and ui
execute if score #game_status ct matches 1 run function ct:display/actionbar_tick

#ray_tracing to coin
execute if score #toss_status ct matches 4 as @a at @s anchored eyes positioned ^ ^ ^0.5 run function ct:special_coins/ray/start_ray