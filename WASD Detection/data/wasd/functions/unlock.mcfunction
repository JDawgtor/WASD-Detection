tag @s remove lock
attribute @s generic.movement_speed base set 0.1
execute at @s as @e[tag=.lock] if score @s lock_id = @p lock_id run kill @s
# execute at @a as @e[type=armor_stand,tag=.locker] if score @s lock_id = @p lock_id run kill @s
execute at @s as @e[type=shulker,tag=.locker] if score @s lock_id = @p lock_id run tag @s add .s_death
execute as @e[type=shulker,tag=.s_death] run tp @s ~ -5000 ~
execute as @e[type=shulker,tag=.s_death] run kill @s