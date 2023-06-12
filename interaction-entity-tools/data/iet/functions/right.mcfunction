advancement revoke @s only iet:right
scoreboard objectives add iet dummy
scoreboard players set clickType iet 1

tellraw @s[tag=ietVerbose] {"text":"Right Click Detected"

function iet:tag_entities