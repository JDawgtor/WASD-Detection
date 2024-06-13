## Remez Algorithm
#a := min (|x|, |y|) / max (|x|, |y|)
#s := a * a
#r := ((-0.0464964749 * s + 0.15931422) * s - 0.327622764) * s * a + a
#if |y| > |x| then r := 1.57079637 - r
#if x < 0 then r := 3.14159274 - r
#if y < 0 then r := -r

## a
scoreboard players operation #temp wasd_math = in wasd_math
scoreboard players operation #temp1 wasd_math = in1 wasd_math
execute if score #temp wasd_math matches ..-1 run scoreboard players operation #temp wasd_math *= #-1 wasd_constant
execute if score #temp1 wasd_math matches ..-1 run scoreboard players operation #temp1 wasd_math *= #-1 wasd_constant
scoreboard players operation #temp2 wasd_math = #temp wasd_math
scoreboard players operation #temp2 wasd_math < #temp1 wasd_math
scoreboard players operation #temp3 wasd_math = #temp wasd_math
scoreboard players operation #temp3 wasd_math > #temp1 wasd_math
scoreboard players operation #temp2 wasd_math *= #1000 wasd_constant
scoreboard players operation #temp2 wasd_math /= #temp3 wasd_math
## s
scoreboard players operation #temp3 wasd_math = #temp2 wasd_math
scoreboard players operation #temp3 wasd_math *= #temp3 wasd_math
scoreboard players operation #temp3 wasd_math /= #1000 wasd_constant
## r
scoreboard players operation out wasd_math = #temp3 wasd_math
scoreboard players operation out wasd_math *= #-46496 wasd_constant
scoreboard players operation out wasd_math /= #100000 wasd_constant
scoreboard players add out wasd_math 1593
scoreboard players operation out wasd_math *= #temp3 wasd_math
scoreboard players operation out wasd_math /= #1000 wasd_constant
scoreboard players remove out wasd_math 3276
scoreboard players operation out wasd_math *= #temp3 wasd_math
scoreboard players operation out wasd_math /= #1000 wasd_constant
scoreboard players operation out wasd_math *= #temp2 wasd_math
scoreboard players operation out wasd_math /= #10000 wasd_constant
scoreboard players operation out wasd_math += #temp2 wasd_math
execute if score #temp1 wasd_math > #temp wasd_math run scoreboard players remove out wasd_math 1570
execute if score #temp1 wasd_math > #temp wasd_math run scoreboard players operation out wasd_math *= #-1 wasd_constant
execute if score in wasd_math matches ..-1 run scoreboard players remove out wasd_math 3141
execute if score in wasd_math matches ..-1 run scoreboard players operation out wasd_math *= #-1 wasd_constant
execute if score in1 wasd_math matches ..-1 run scoreboard players operation out wasd_math *= #-1 wasd_constant
## rad 2 deg
scoreboard players operation out wasd_math *= #57295 wasd_constant
scoreboard players operation out wasd_math /= #1000000 wasd_constant