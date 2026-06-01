scoreboard players set #horde_tonight horde 1
tellraw @a ["",{"text":"[ORDA] ","color":"dark_red","bold":true},{"text":"Qualcosa si muove nell'oscurita...","color":"dark_red","italic":true}]
schedule function horde:warning_2 600t replace
schedule function horde:spawn_all 1200t replace
