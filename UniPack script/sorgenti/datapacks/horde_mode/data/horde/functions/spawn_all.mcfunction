tellraw @a ["",{"text":"[ORDA] ","color":"dark_red","bold":true},{"text":"STANNO ARRIVANDO!","color":"red","bold":true}]
weather thunder
effect give @a minecraft:darkness 100 1 true
execute as @a at @s run function horde:spawn
