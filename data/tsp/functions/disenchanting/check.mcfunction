#> tsp:disenchanting/check
# called from tsp:disenchanting/main

# set the success scoreboard for checking
scoreboard players set @s tsp.success 1

# check if there are the required items in the area
# amethyst
execute if score @s tsp.success matches 1 unless entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},distance=0.01..1] run scoreboard players set @s tsp.success 0
# book
execute if score @s tsp.success matches 1 unless entity @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b}},distance=0.01..1] run scoreboard players set @s tsp.success 0

# lapis
execute if score @s tsp.success matches 1 unless entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=0.01..1] unless entity @e[type=item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}},distance=0.01..1] run scoreboard players set @s tsp.success 0

# check for success
execute if score @s tsp.success matches 1 run function tsp:disenchanting/run
