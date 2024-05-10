##1 get player position
#get wasd
execute store result score .x wasd run data get entity @s Pos[0] 100000
#get wasd 
execute store result score .y wasd run data get entity @s Pos[1] 100000
#get wasd
execute store result score .z wasd run data get entity @s Pos[2] 100000
#get ry
execute store result score .ry wasd run data get entity @s Rotation[0] 1.0

##2 WASD
##DETECT Player Motion by subtracting previous position from current position (i.e current position = 11, previous position = 10, thus the difference = 1)
#reset player motion
scoreboard players reset .x_motion wasd
scoreboard players reset .z_motion wasd
scoreboard players set .mot wasd 0
#if moving run calc (if position this tick matches the previous tick, then the player has not moved)
execute if score .x wasd = @s x_prev if score .z wasd = @s z_prev run scoreboard players set .mot wasd -999
execute unless score .mot wasd matches -999 run function wasd:z_backend/math/calc_mot

##DETECT WASD using motion results and player rotation

#set values to 0 before calc
scoreboard players set .w wasd 0
scoreboard players set .a wasd 0
scoreboard players set .s wasd 0
scoreboard players set .d wasd 0
scoreboard players set .dir wasd 0

#if moving run calc
execute if score .x wasd = @s x_prev if score .z wasd = @s z_prev run scoreboard players set .dir wasd -999
execute unless score .dir wasd matches -999 run function wasd:z_backend/math/calc_range

#y
scoreboard players set .up wasd 0
scoreboard players set .down wasd 0
execute unless score .y wasd = @s y_prev run function wasd:z_backend/math/calcy

##3 APPLY OUTPUT TO PLAYER
##|7 (cancels 3)                        |3
execute unless entity @s[tag=buffer] run function wasd:z_backend/apply_output

scoreboard players operation @s up = .up wasd
scoreboard players operation @s down = .down wasd

##8
tag @s remove buffer

##4 reset player's position (if being teleported)
execute if entity @s[tag=lock] run function wasd:pos

##5
#set prev tick
execute unless entity @s[tag=success] run function wasd:z_backend/apply_pos

##6
tag @s[tag=success] add buffer
tag @s[tag=success] remove success