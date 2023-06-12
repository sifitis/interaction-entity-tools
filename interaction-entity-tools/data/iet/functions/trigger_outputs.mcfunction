execute store result score bid iet run scoreboard players get @s iet_ids

#Long range
execute if entity @s[tag=ietLongRange] as @e[tag=ietOutput] store result score @s iet run scoreboard players get @s iet_ids
execute if entity @s[tag=ietLongRange] as @e[tag=ietOutput] at @s if score @s iet = bid iet run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass

#Short range
execute unless entity @s[tag=ietLongRange] as @e[tag=ietOutput,distance=..32] store result score @s iet run scoreboard players get @s iet_ids
execute unless entity @s[tag=ietLongRange] as @e[tag=ietOutput,distance=..32] at @s if score @s iet = bid iet run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass
