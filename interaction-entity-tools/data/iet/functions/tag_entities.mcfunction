tag @s add iet_player
execute as @e[type=interaction,distance=..10] run function iet:filter_ie

execute if entity @a[tag=ietVerbose] run tellraw @a[tag=ietVerbose] [{"text":"Executor is ","color":"#FF6600"},{"selector":"@e[tag=iet_player]","color":"yellow"}]
execute if entity @a[tag=ietVerbose] as @e[tag=iet_ie] run tellraw @a[tag=ietVerbose] [{"text":"Interaction entity is ","color":"#FF6600"},{"selector":"@s","color":"yellow"},{"text":" and has the following tags:\n","color":"#FF6600"},{"nbt":"Tags","entity":"@s","color":"#66FF22"}]

execute as @e[tag=iet_ie] if score clickType iet matches 0 unless entity @s[tag=ietIgnoreLeft] at @s run function iet:select_outputs
execute if entity @a[tag=ietVerbose] as @e[tag=iet_ie] if score clickType iet matches 0 if entity @s[tag=ietIgnoreLeft] at @s run tellraw @a[tag=ietVerbose] {"text":"Interaction entity is flagged to ignore left clicks","color":"#FF6600"}
execute as @e[tag=iet_ie] if score clickType iet matches 1 unless entity @s[tag=ietIgnoreRight] at @s run function iet:select_outputs
execute if entity @a[tag=ietVerbose] as @e[tag=iet_ie] if score clickType iet matches 1 if entity @s[tag=ietIgnoreRight] at @s run tellraw @a[tag=ietVerbose] {"text":"Interaction entity is flagged to ignore right clicks","color":"#FF6600"}


tag @s remove iet_player
tag @e[tag=iet_ie] remove iet_ie
scoreboard objectives remove iet