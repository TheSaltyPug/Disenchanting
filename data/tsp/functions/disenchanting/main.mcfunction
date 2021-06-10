#> tsp:disenchanting/main
# This function will run every tick

# check for an enchanted item ontop of an enchanting_table
execute as @e[type=item] at @s if data entity @s Item.tag.Enchantments[0] if block ~ ~ ~ enchanting_table run function tsp:disenchanting/check
