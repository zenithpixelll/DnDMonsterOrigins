tag @s add homeself
execute as @e[type=minecraft:armor_stand] if score @s HomeUUID_1 = @p[tag=homeself] selfHomeUUID_1 if score @s HomeUUID_2 = @p[tag=homeself] selfHomeUUID_2 if score @s HomeUUID_3 = @p[tag=homeself] selfHomeUUID_3 if score @s HomeUUID_4 = @p[tag=homeself] selfHomeUUID_4 run tp @p[tag=homeself] @s
tag @s remove homeself