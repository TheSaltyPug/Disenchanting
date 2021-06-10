#> tsp:disenchanting/run/one
# called from tsp:disenchanting/run

# kill lapis_lazuli
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},limit=1,sort=nearest]

# make fancy particles
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] run particle minecraft:enchant ~ ~0.2 ~ 0.1 0.1 0.1 0.5 20

# merge enchantments
# change from book to enchanted_book
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:book"}},limit=1,sort=nearest] Item.id set value "minecraft:enchanted_book"

# move last enchantment from the item to the book
data modify entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:enchanted_book"}},limit=1,sort=nearest] Item.tag.StoredEnchantments append from entity @s Item.tag.Enchantments[-1]

# remove the last enchantment from item
data remove entity @s Item.tag.Enchantments[-1]
