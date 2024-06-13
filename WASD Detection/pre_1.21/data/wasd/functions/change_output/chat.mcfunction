execute unless entity @s run tellraw @p [{"text": "No player attatched to command, please target an entity using an \"@\" selector.","color": "red"}]
scoreboard players set @s wasd_output 4
title @s reset

# ! Chat will display everyone's output to the in-game chat.