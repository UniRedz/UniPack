scoreboard players set #horde_dawn_done horde 1
execute if score #horde_tonight horde matches 1 run tellraw @a ["",{"text":"[ORDA] ","color":"dark_green","bold":true},{"text":"L'alba ha spazzato via i mostri.","color":"green"}]
execute if score #horde_tonight horde matches 1 run kill @e[tag=horde_mob]
scoreboard players set #horde_tonight horde 0
