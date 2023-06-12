tag @s add iet_player
execute as @e[type=interaction,distance=..10] run function iet:filter_ie

execute if entity @a[tag=ietVerbose] run tellraw @a[tag=ietVerbose] [{"text":"Executor is "},{"selector":"@e[tag=iet_player]"}]

execute if entity @a[tag=ietVerbose] run tellraw @a[tag=ietVerbose] [{"text":"Interaction is "},{"selector":"@e[tag=iet_ie]"}]

execute as @e[tag=iet_ie] if score clickType iet matches 0 unless entity @s[tag=ietLeftClickInvalid] at @s run function iet:select_outputs
execute as @e[tag=iet_ie] if score clickType iet matches 1 unless entity @s[tag=ietRightClickInvalid] at @s run function iet:select_outputs

tag @s remove iet_player
tag @e[tag=iet_ie] remove iet_ie
scoreboard objectives remove iet