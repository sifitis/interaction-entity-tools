execute store result score bid iet run scoreboard players get @s iet_ids

execute if score bid iet matches 0 run scoreboard players set bFail iet 1
execute if score bFail iet matches 1 if entity @a[tag=ietVerbose] run tellraw @a[tag=ietVerbose] {"text":"This interaction entity does not have a valid iet_ids score","color":"#FF3311"}

execute unless score bFail iet matches 1.. if entity @a[tag=ietVerbose] run tellraw @a[tag=ietVerbose] [{"text":"Searching for entities with ID score: ","color":"#FF6600"},{"score":{"name":"bid","objective":"iet"},"color":"yellow"}]
#Long range

execute unless score bFail iet matches 1.. if entity @a[tag=ietVerbose] if entity @s[tag=ietLongRange] run tellraw @a[tag=ietVerbose] {"text":"Running long-range check (>32m)","color":"#FF6600"}

execute unless score bFail iet matches 1.. if entity @s[tag=ietLongRange] as @e[tag=ietOutput] store result score @s iet run scoreboard players get @s iet_ids
execute unless score bFail iet matches 1.. if entity @s[tag=ietLongRange] as @e[tag=ietOutput] at @s if score @s iet = bid iet run function iet:trigger_outputs

#Short range

execute unless score bFail iet matches 1.. if entity @a[tag=ietVerbose] unless entity @s[tag=ietLongRange] run tellraw @a[tag=ietVerbose] {"text":"Running short-range check (<32m)","color":"#FF6600"}

execute unless score bFail iet matches 1.. unless entity @s[tag=ietLongRange] as @e[tag=ietOutput,distance=..32] store result score @s iet run scoreboard players get @s iet_ids
execute unless score bFail iet matches 1.. unless entity @s[tag=ietLongRange] as @e[tag=ietOutput,distance=..32] at @s if score @s iet = bid iet run function iet:trigger_outputs
