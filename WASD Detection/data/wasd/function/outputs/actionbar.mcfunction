##OUTPUT EXAMPLE

data remove storage wasd:output actionbar

execute if predicate wasd:w run data modify storage wasd:output actionbar append value '{"text":"W","color":"green"}'
execute unless predicate wasd:w run data modify storage wasd:output actionbar append value '{"text":"W","color":"gray"}'

execute if predicate wasd:a run data modify storage wasd:output actionbar append value '{"text":"A","color":"green"}'
execute unless predicate wasd:a run data modify storage wasd:output actionbar append value '{"text":"A","color":"gray"}'

execute if predicate wasd:s run data modify storage wasd:output actionbar append value '{"text":"S","color":"green"}'
execute unless predicate wasd:s run data modify storage wasd:output actionbar append value '{"text":"S","color":"gray"}'

execute if predicate wasd:d run data modify storage wasd:output actionbar append value '{"text":"D","color":"green"}'
execute unless predicate wasd:d run data modify storage wasd:output actionbar append value '{"text":"D","color":"gray"}'

execute if predicate wasd:space run data modify storage wasd:output actionbar append value '{"text":"[SPACE]","color":"green"}'
execute unless predicate wasd:space run data modify storage wasd:output actionbar append value '{"text":"[SPACE]","color":"gray"}'

execute if predicate wasd:shift run data modify storage wasd:output actionbar append value '{"text":"[SHIFT]","color":"green"}'
execute unless predicate wasd:shift run data modify storage wasd:output actionbar append value '{"text":"[SHIFT]","color":"gray"}'

title @s actionbar {"nbt":"actionbar[]","storage":"wasd:output","interpret":true,"separator": " "}