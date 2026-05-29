scoreboard players set #night_done horde 1
scoreboard players remove #nights_left horde 1
execute if score #nights_left horde matches ..0 run function horde:horde_trigger
