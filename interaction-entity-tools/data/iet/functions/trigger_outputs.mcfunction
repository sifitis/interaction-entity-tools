execute store result score #bid iet run data get entity @s UUID[3] 1.0

#Long range
execute if entity @s[tag=eitLongRange] as @e[tag=eitOutput] store result score @s iet run data get entity @s UUID[3] 1.0
execute if entity @s[tag=eitLongRange] as @e[tag=eitOutput] at @s if score @s iet = #bid iet run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass

#Short range
execute unless entity @s[tag=eitLongRange] as @e[tag=eitOutput,distance=..32] store result score @s iet run data get entity @s UUID[3] 1.0
execute unless entity @s[tag=eitLongRange] as @e[tag=eitOutput,distance=..32] at @s if score @s iet = #bid iet run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass
