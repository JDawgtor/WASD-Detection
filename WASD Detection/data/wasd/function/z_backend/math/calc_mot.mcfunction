#get motion from position difference
scoreboard players operation .x_motion wasd = .x wasd
scoreboard players operation .x_motion wasd -= @s x_prev

#scale
# scoreboard players operation .x_motion wasd /= #10 constant

#get motion from position difference
scoreboard players operation .z_motion wasd = .z wasd
scoreboard players operation .z_motion wasd -= @s z_prev

#scale
# scoreboard players operation .z_motion wasd /= #10 constant


#tellraw @a ["X: ",{"score":{"name":".x_motion","objective":"wasd"}}," Z: ",{"score":{"name":".z_motion","objective":"wasd"}}]