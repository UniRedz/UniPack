scoreboard players set #active horde_active 1
scoreboard players set #wave horde_wave 0
tellraw @a ["",{"text":"[ORDA] ","color":"red","bold":true},{"text":"Modalita Orda attivata! Preparatevi...","color":"dark_red"}]
schedule function horde:wave 100t replace
