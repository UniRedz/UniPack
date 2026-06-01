scoreboard objectives add horde dummy
scoreboard objectives add horde_welcomed dummy
scoreboard players set #night_done horde 0
scoreboard players set #horde_tonight horde 0
scoreboard players set #horde_dawn_done horde 0
scoreboard players set #current_day horde 0
scoreboard players reset * horde_welcomed
schedule function horde:loop 200t replace
