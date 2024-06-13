tag @s add lock
team join wasd_lock @s[tag=lock]
tp @s ~ ~ ~ ~ ~
attribute @s minecraft:generic.movement_speed base set 0.00108
summon marker ~ ~ ~ {Tags:[".lock",".f_init"]}

summon armor_stand ~ ~1.5004 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:[".locker",".lock",".f_init"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,AttachFace:0b,Tags:[".locker",".f_init"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:99999999,show_particles:0b}]}],Rotation:[0F,90F]}
scoreboard players operation @e[type=marker,tag=.f_init,sort=nearest,limit=1] lock_id = @s lock_id
scoreboard players operation @e[type=armor_stand,sort=nearest,limit=1] lock_id = @s lock_id
scoreboard players operation @e[type=shulker,sort=nearest,limit=1] lock_id = @s lock_id

execute at @e[type=marker,tag=.f_init,sort=nearest,limit=1] store result score @s x_prev run data get entity @s Pos[0] 100000
execute at @e[type=marker,tag=.f_init,sort=nearest,limit=1] store result score @s y_prev run data get entity @s Pos[1] 100000
execute at @e[type=marker,tag=.f_init,sort=nearest,limit=1] store result score @s z_prev run data get entity @s Pos[2] 100000
execute at @e[type=marker,tag=.f_init,sort=nearest,limit=1] store result score .ry wasd run data get entity @s Rotation[0] 1.0

function wasd:z_backend/data

tp @e[tag=.f_init,tag=.lock,sort=nearest,limit=1] ~ ~ ~ ~ ~
tag @e[tag=.f_init] remove .f_init