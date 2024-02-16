tag @s add homeself
execute as @e[tag=tphomestand,limit=1] at @s if score @s HomeUUID_1 = @p[tag=homeself] selfHomeUUID_1 if score @s HomeUUID_2 = @p[tag=homeself] selfHomeUUID_2 if score @s HomeUUID_3 = @p[tag=homeself] selfHomeUUID_3 if score @s HomeUUID_4 = @p[tag=homeself] selfHomeUUID_4 run setblock ~ 0 ~ bedrock
execute as @e[tag=tphomestand,limit=1] if score @s HomeUUID_1 = @p[tag=homeself] selfHomeUUID_1 if score @s HomeUUID_2 = @p[tag=homeself] selfHomeUUID_2 if score @s HomeUUID_3 = @p[tag=homeself] selfHomeUUID_3 if score @s HomeUUID_4 = @p[tag=homeself] selfHomeUUID_4 run kill @s
tag @s remove homeself
scoreboard players set @s hasHome 0
tag @s remove clearhome