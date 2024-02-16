scoreboard objectives add HomeUUID_1 dummy
scoreboard objectives add HomeUUID_2 dummy
scoreboard objectives add HomeUUID_3 dummy
scoreboard objectives add HomeUUID_4 dummy
scoreboard objectives add selfHomeUUID_1 dummy
scoreboard objectives add selfHomeUUID_2 dummy
scoreboard objectives add selfHomeUUID_3 dummy
scoreboard objectives add selfHomeUUID_4 dummy
scoreboard objectives add hasHome dummy
scoreboard players set .hasHome hasHome 1
execute as @a store result score @s selfHomeUUID_1 run data get entity @s UUID[0]
execute as @a store result score @s selfHomeUUID_2 run data get entity @s UUID[1]
execute as @a store result score @s selfHomeUUID_3 run data get entity @s UUID[2]
execute as @a store result score @s selfHomeUUID_4 run data get entity @s UUID[3]