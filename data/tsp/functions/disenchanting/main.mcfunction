#> tsp:disenchanting/main

# check for an enchanted item ontop of an enchanting_table
execute as @e[tag=!global.ignore, type=item] at @s if data entity @s Item.tag.Enchantments[0] if block ~ ~ ~ enchanting_table run function tsp:disenchanting/check

# Since we don't need to check every tick, 
# schedule this function to run again soon
schedule function tsp:disenchanting/main 11t
