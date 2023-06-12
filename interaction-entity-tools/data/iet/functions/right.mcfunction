advancement revoke @s only iet:right
scoreboard objectives add iet dummy
scoreboard players set clickType iet 1

tellraw @s[tag=ietVerbose] {"text":"\n=== Verbose IET Log ===","color":"#FF7711"}
tellraw @s[tag=ietVerbose] {"text":"Right Click Detected","color":"#FF6600"}

function iet:tag_entities