#set tag
data modify entity @s Tags set value ["ani_interaction"]
data modify entity @s Tags append from storage ps:tmp ani_data.ani_tag

#set dimension
data modify entity @s width set from storage ps:tmp ani_data.width
data modify entity @s height set from storage ps:tmp ani_data.height
