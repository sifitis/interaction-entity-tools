scoreboard players set #bTriggeredIe iet 0

execute if score #clickType iet matches 0 on attacker store result score #bTriggeredIe iet if entity @s[tag=iet_player]
execute if score #clickType iet matches 1 on target store result score #bTriggeredIe iet if entity @s[tag=iet_player]

execute if score #bTriggeredIe iet matches 1 if score #clickType iet matches 0 run data remove entity @s attack
execute if score #bTriggeredIe iet matches 1 if score #clickType iet matches 1 run data remove entity @s interaction

execute if score #bTriggeredIe iet matches 1 run tag @s add iet_ie