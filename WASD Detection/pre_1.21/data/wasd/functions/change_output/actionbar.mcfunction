execute unless entity @s run tellraw @p [{"text": "No player attatched to command, please target an entity using an \"@\" selector.","color": "red"}]
scoreboard players set @s wasd_output 1
title @s reset

# ! Actionbar will display your output as text in the actionbar.