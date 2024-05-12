# The reload function that will run after the /reload command has been run #

scoreboard objectives add wasd dummy
scoreboard objectives add wasd_output dummy

scoreboard objectives add w dummy
scoreboard objectives add a dummy
scoreboard objectives add s dummy
scoreboard objectives add d dummy
scoreboard objectives add up dummy
scoreboard objectives add down dummy

scoreboard objectives add x_prev dummy
scoreboard objectives add y_prev dummy
scoreboard objectives add z_prev dummy

scoreboard objectives add lock_id dummy
team add wasd_lock
team modify wasd_lock collisionRule never

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add shift dummy


##MATH STUFF IDK
scoreboard objectives add wasd_math dummy
scoreboard objectives add wasd_constant dummy

scoreboard players set #-1 wasd_constant -1
scoreboard players set #1000 wasd_constant 1000
scoreboard players set #10000 wasd_constant 10000
scoreboard players set #100000 wasd_constant 100000
scoreboard players set #1000000 wasd_constant 1000000
scoreboard players set #57295 wasd_constant 57295
scoreboard players set #360 wasd_constant 360

scoreboard objectives add hide_msg dummy
execute unless score .wasd hide_msg matches 1.. run tellraw @a [{"text":"WASD Detection Installed "},{"text":"[Hide reload message]","color":"gray","clickEvent": { "action": "run_command","value": "/scoreboard players set .wasd hide_msg 1"}}]