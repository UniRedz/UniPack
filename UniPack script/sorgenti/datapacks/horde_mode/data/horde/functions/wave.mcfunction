execute if score #active horde_active matches 1 run scoreboard players add #wave horde_wave 1
execute if score #active horde_active matches 1 run tellraw @a ["",{"text":"[ORDA] ","color":"red","bold":true},{"text":"Ondata ","color":"dark_red"},{"score":{"name":"#wave","objective":"horde_wave"},"color":"yellow"},{"text":"  -  Resistete!","color":"dark_red"}]
execute if score #active horde_active matches 1 if score #wave horde_wave matches 5.. run tellraw @a ["",{"text":"[ORDA] ","color":"dark_red","bold":true},{"text":"ONDATA DI TERRORE!","color":"red","bold":true}]
execute if score #active horde_active matches 1 if score #wave horde_wave matches 1 run function horde:_spawn_1
execute if score #active horde_active matches 1 if score #wave horde_wave matches 2 run function horde:_spawn_2
execute if score #active horde_active matches 1 if score #wave horde_wave matches 3 run function horde:_spawn_3
execute if score #active horde_active matches 1 if score #wave horde_wave matches 4.. run function horde:_spawn_4
execute if score #active horde_active matches 1 run schedule function horde:wave 600t replace
