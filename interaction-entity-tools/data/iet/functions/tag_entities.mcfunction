tag @s add iet_player
execute as @e[type=interaction,distance=..10] run function iet:filter_ie

execute as @e[tag=iet_ie] if score clickType iet matches 0 unless entity @s[tag=eitLeftClickInvalid] at @s run function iet:trigger_outputs
execute as @e[tag=iet_ie] if score clickType iet matches 1 unless entity @s[tag=eitRightClickInvalid] at @s run function iet:trigger_outputs

tag @s remove iet_player
tag @e[tag=iet_ie] remove iet_ie
scoreboard objectives remove iet