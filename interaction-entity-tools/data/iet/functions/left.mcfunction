advancement revoke @s only iet:left
scoreboard objectives add iet dummy
scoreboard players set clickType iet 0

tellraw @s[tag=ietVerbose] {"text":"Left Click Detected"}

function iet:tag_entities