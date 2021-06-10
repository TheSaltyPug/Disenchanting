#> tsp:disenchanting/run
# called from tsp:disenchanting/check

# kill the nearest amethyst
kill @e[tag=!global.ignore, tag=!global.ignore.kill, type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}},limit=1, sort=nearest]

# make a fancy sound
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 

# move enchantments from item to book
# one
execute if entity @e[tag=!global.ignore, tag=!global.ignore.kill, type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=0.01..1] run function tsp:disenchanting/run/one
# all
execute if entity @e[tag=!global.ignore, tag=!global.ignore.kill, type=item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}},distance=0.01..1] run function tsp:disenchanting/run/all
