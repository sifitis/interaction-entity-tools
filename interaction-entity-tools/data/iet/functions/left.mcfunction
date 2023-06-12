advancement revoke @s only iet:left
scoreboard objectives add iet dummy
scoreboard players set clickType iet 0

tellraw @s[tag=ietVerbose] {"text":"\n=== Verbose IET Log ===","color":"#FF7711"}
tellraw @s[tag=ietVerbose] {"text":"Left Click Detected","color":"#FF6600"}

function iet:tag_entities