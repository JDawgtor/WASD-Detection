#at this point the player has moved

#say jumping or falling

scoreboard players operation .y_motion wasd = .y wasd
scoreboard players operation .y_motion wasd -= @s y_prev

execute if score .y_motion wasd matches 0.. run scoreboard players set .up wasd 1
execute if score .y_motion wasd matches ..-1 run scoreboard players set .down wasd 1