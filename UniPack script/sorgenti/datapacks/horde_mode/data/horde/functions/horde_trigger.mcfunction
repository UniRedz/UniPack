execute store result score #day horde run time query day
scoreboard players set #two horde 2
scoreboard players operation #day_mod horde = #day horde
scoreboard players operation #day_mod horde %= #two horde
execute if score #day_mod horde matches 0 run scoreboard players set #nights_left horde 2
execute if score #day_mod horde matches 1 run scoreboard players set #nights_left horde 3
tellraw @a ["",{"text":"[ORDA] ","color":"dark_red","bold":true},{"text":"Qualcosa si muove nell'oscurita...","color":"dark_red","italic":true}]
schedule function horde:spawn_all 60t replace
