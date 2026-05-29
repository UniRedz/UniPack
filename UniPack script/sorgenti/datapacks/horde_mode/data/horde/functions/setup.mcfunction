scoreboard objectives add horde dummy
scoreboard players set #nights_left horde 2
scoreboard players set #night_done horde 0
schedule function horde:loop 200t replace
