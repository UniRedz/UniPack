schedule clear horde:loop
schedule clear horde:spawn_all
scoreboard players set #night_done horde 0
scoreboard players set #nights_left horde 2
tellraw @a ["",{"text":"[ORDA] ","color":"dark_green","bold":true},{"text":"Sistema orda disattivato.","color":"green"}]
