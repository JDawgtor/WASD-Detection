## debouncing rotation
scoreboard players operation .ry wasd = @s wasd
execute store result score @s wasd run data get entity @s Rotation[0] 1.0

## dir = atan2(Motion[0],Motion[2]) + Rotation[0]
scoreboard players operation in wasd_math = .z_motion wasd
scoreboard players operation in1 wasd_math = .x_motion wasd
function wasd:z_backend/math/atan2
scoreboard players operation .dir wasd = out wasd_math
scoreboard players operation .dir wasd += .ry wasd

## Map angle to the range 0..360
scoreboard players operation .dir wasd %= #360 wasd_constant

## WASD based on dir angle ranges
execute if score .dir wasd matches 23..157 run scoreboard players set .a wasd 1
execute if score .dir wasd matches 112..248 run scoreboard players set .s wasd 1
execute if score .dir wasd matches 203..337 run scoreboard players set .d wasd 1
execute if score .dir wasd matches 293..360 run scoreboard players set .w wasd 1
execute if score .dir wasd matches 0..67 run scoreboard players set .w wasd 1

tag @s[tag=lock] add success

#execute if entity @s[tag=success] run function wasd:save_result