##OUTPUT EXAMPLE
data remove storage wasd:output actionbar

execute as @a if predicate wasd:w run data modify storage wasd:output actionbar append value '{"text":"W","color":"white"}'
execute as @a unless predicate wasd:w run data modify storage wasd:output actionbar append value '{"text":"W","color":"gray"}'

execute as @a if predicate wasd:a run data modify storage wasd:output actionbar append value '{"text":"A","color":"white"}'
execute as @a unless predicate wasd:a run data modify storage wasd:output actionbar append value '{"text":"A","color":"gray"}'

execute as @a if predicate wasd:s run data modify storage wasd:output actionbar append value '{"text":"S","color":"white"}'
execute as @a unless predicate wasd:s run data modify storage wasd:output actionbar append value '{"text":"S","color":"gray"}'

execute as @a if predicate wasd:d run data modify storage wasd:output actionbar append value '{"text":"D","color":"white"}'
execute as @a unless predicate wasd:d run data modify storage wasd:output actionbar append value '{"text":"D","color":"gray"}'

execute as @a if predicate wasd:space run data modify storage wasd:output actionbar append value '{"text":"[SPACE]","color":"white"}'
execute as @a unless predicate wasd:space run data modify storage wasd:output actionbar append value '{"text":"[SPACE]","color":"gray"}'

execute as @a if predicate wasd:shift run data modify storage wasd:output actionbar append value '{"text":"[SHIFT]","color":"white"}'
execute as @a unless predicate wasd:shift run data modify storage wasd:output actionbar append value '{"text":"[SHIFT]","color":"gray"}'

title @a times 0 3 0
title @a subtitle {"nbt":"actionbar[]","storage":"wasd:output","interpret":true,"separator": " "}
title @a title ""