# The reload function that will run after the /reload command has been run #
tellraw @a [{"text":"Uninstalled [WASD]"}]
scoreboard objectives remove wasd
scoreboard objectives remove wasd_output
title @a reset

scoreboard objectives remove w
scoreboard objectives remove a
scoreboard objectives remove s
scoreboard objectives remove d
scoreboard objectives remove up
scoreboard objectives remove down

scoreboard objectives remove x_prev
scoreboard objectives remove y_prev
scoreboard objectives remove z_prev

scoreboard objectives remove w_result
scoreboard objectives remove a_result
scoreboard objectives remove s_result
scoreboard objectives remove d_result

scoreboard objectives remove lock_id

scoreboard objectives remove sneak
scoreboard objectives remove shift


##MATH STUFF IDK
scoreboard objectives remove wasd_math
scoreboard objectives remove wasd_constant