execute if score @s wasd_output matches 0 run scoreboard players reset @s wasd_output
execute if score @s wasd_output matches 1 run function wasd:outputs/actionbar
execute if score @s wasd_output matches 2 run function wasd:outputs/fancy
execute if score @s wasd_output matches 3 run function wasd:outputs/title
execute if score @s wasd_output matches 4 run function wasd:outputs/chat