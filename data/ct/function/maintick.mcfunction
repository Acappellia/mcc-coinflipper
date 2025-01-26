effect give @a saturation infinite 0 true
effect give @a resistance infinite 9 true
gamemode adventure @a[gamemode=survival]
team join players @a

#ani tick
execute if data storage ps:ani frame_list[0] run function ps:animation/tick