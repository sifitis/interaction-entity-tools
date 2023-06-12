tellraw @a[tag=ietVerbose] [{"text":"Responses:","color":"#FF6600"}]

execute if score clickType iet matches 0 unless entity @s[tag=ietIgnoreLeft] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass
execute if score clickType iet matches 0 unless entity @s[tag=ietIgnoreLeft] run tellraw @a[tag=ietVerbose] [{"text":"> ","color":"#FF6600"},{"selector":"@s","color":"yellow"},{"text":" - Triggered via left click.\n  ","color":"#FF6600"},{"nbt":"Tags","entity":"@s","color":"#66FF22"}]
execute if score clickType iet matches 0 if entity @s[tag=ietIgnoreLeft] run tellraw @a[tag=ietVerbose] [{"text":"> ","color":"#FF6600"},{"selector":"@s","color":"yellow"},{"text":" - Ignoring left click.\n  ","color":"#FF6600"},{"nbt":"Tags","entity":"@s","color":"#66FF22"}]

execute if score clickType iet matches 1 unless entity @s[tag=ietIgnoreRight] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass
execute if score clickType iet matches 1 unless entity @s[tag=ietIgnoreRight] run tellraw @a[tag=ietVerbose] [{"text":"> ","color":"#FF6600"},{"selector":"@s","color":"yellow"},{"text":" - Triggered via right click.\n  ","color":"#FF6600"},{"nbt":"Tags","entity":"@s","color":"#66FF22"}]
execute if score clickType iet matches 1 if entity @s[tag=ietIgnoreRight] run tellraw @a[tag=ietVerbose] [{"text":"> ","color":"#FF6600"},{"selector":"@s","color":"yellow"},{"text":" - Ignoring right click.\n  ","color":"#FF6600"},{"nbt":"Tags","entity":"@s","color":"#66FF22"}]