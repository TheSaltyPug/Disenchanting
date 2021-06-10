#> tsp:disenchanting/run/all
# called from tsp:disenchanting/run

# kill lapis_block
kill @e[tag=!global.ignore, tag=!global.ignore.kill, type=minecraft:item,nbt={Item:{id:"minecraft:lapis_block",Count:1b}},limit=1,sort=nearest]

# make fancy particles
execute at @e[tag=!global.ignore, tag=!global.ignore.kill, type=minecraft:item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] run particle minecraft:enchant ~ ~0.3 ~ 0.1 0.1 0.1 0.5 100

# merge enchantments
# change from book to enchanted_book
data modify entity @e[tag=!global.ignore, tag=!global.ignore.kill, type=minecraft:item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] Item.id set value "minecraft:enchanted_book"

# move enchantments to the book
data modify entity @e[tag=!global.ignore, tag=!global.ignore.kill, type=minecraft:item,nbt={Item:{id:"minecraft:enchanted_book"}},limit=1,sort=nearest] Item.tag.StoredEnchantments set from entity @s Item.tag.Enchantments

# remove enchantments from item
data remove entity @s Item.tag.Enchantments
