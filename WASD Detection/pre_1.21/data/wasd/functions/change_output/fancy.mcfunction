execute unless entity @s run tellraw @p [{"text": "No player attatched to command, please target an entity using an \"@\" selector.","color": "red"}]
tellraw @s [{"text": "Warning: Resource pack required","color": "white"}]
scoreboard players set @s wasd_output 2
title @s reset

# ! Fancy will display your output as  key icons if resource pack is applied.