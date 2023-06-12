execute if score clickType iet matches 0 unless entity @s[tag=ietIgnoreLeft] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass

execute if score clickType iet matches 0 unless entity @s[tag=ietIgnoreLeft] run tellraw @a[tag=ietVerbose] [{"selector":"@s"},{"text":" - Triggered via left click."}]

execute if score clickType iet matches 0 if entity @s[tag=ietIgnoreLeft] run tellraw @a[tag=ietVerbose] [{"selector":"@s"},{"text":" - Ignoring left click."}]

execute if score clickType iet matches 1 unless entity @s[tag=ietIgnoreRight] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block replace minecraft:red_stained_glass

execute if score clickType iet matches 1 unless entity @s[tag=ietIgnoreLeft] run tellraw @a[tag=ietVerbose] [{"selector":"@s"},{"text":" - Triggered via right click."}]

execute if score clickType iet matches 1 if entity @s[tag=ietIgnoreLeft] run tellraw @a[tag=ietVerbose] [{"selector":"@s"},{"text":" - Ignoring right click."}]