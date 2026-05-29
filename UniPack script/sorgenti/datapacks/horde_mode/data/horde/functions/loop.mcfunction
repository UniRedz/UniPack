execute store result score #time horde run time query daytime
execute if score #time horde matches 12500..13500 if score #night_done horde matches 0 run function horde:night_start
execute if score #time horde matches 0..2000 run scoreboard players set #night_done horde 0
schedule function horde:loop 200t replace
