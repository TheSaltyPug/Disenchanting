#> tsp:disenchanting/setup
# This function will run on datapack loading

# create the success scoreboard
scoreboard objectives add tsp.success dummy

# schedule the main function to run
schedule function tsp:disenchanting/main 11t
