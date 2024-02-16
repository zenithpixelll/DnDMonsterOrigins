tag @s add homeself
execute as @e[tag=tphomestand,limit=1] at @s if score @s HomeUUID_1 = @p[tag=homeself] selfHomeUUID_1 if score @s HomeUUID_2 = @p[tag=homeself] selfHomeUUID_2 if score @s HomeUUID_3 = @p[tag=homeself] selfHomeUUID_3 if score @s HomeUUID_4 = @p[tag=homeself] selfHomeUUID_4 run setblock ~ 0 ~ bedrock
execute as @e[type=minecraft:armor_stand] if score @s HomeUUID_1 = @p[tag=homeself] selfHomeUUID_1 if score @s HomeUUID_2 = @p[tag=homeself] selfHomeUUID_2 if score @s HomeUUID_3 = @p[tag=homeself] selfHomeUUID_3 if score @s HomeUUID_4 = @p[tag=homeself] selfHomeUUID_4 run kill @s
tag @s remove homeself

# Create armor stand to teleport to, make it multiplayer friendly
tag @s add sethomeself
summon armor_stand ~ ~ ~ {Tags: ["homestand"], Invisible: 1b, Small: 1b, NoGravity: 1b, Marker: 1b}
execute as @e[type=armor_stand,limit=1,tag=homestand] store result score @s HomeUUID_1 run data get entity @p[tag=sethomeself,limit=1,distance=..2] UUID[0]
execute as @e[type=armor_stand,limit=1,tag=homestand] store result score @s HomeUUID_2 run data get entity @p[tag=sethomeself,limit=1,distance=..2] UUID[1]
execute as @e[type=armor_stand,limit=1,tag=homestand] store result score @s HomeUUID_3 run data get entity @p[tag=sethomeself,limit=1,distance=..2] UUID[2]
execute as @e[type=armor_stand,limit=1,tag=homestand] store result score @s HomeUUID_4 run data get entity @p[tag=sethomeself,limit=1,distance=..2] UUID[3]
tag @s remove sethomeself
tag @e[type=armor_stand,limit=1,tag=homestand,distance=..3] add tphomestand
tag @e[type=armor_stand,limit=1,tag=homestand,distance=..3] remove homestand


