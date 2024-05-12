##OUTPUT EXAMPLE

data remove storage wasd:output actionbar

data modify storage wasd:output actionbar append value '{"text":"\\uF82D\\uF82C","font":"space:default"}'

execute if predicate wasd:w run data modify storage wasd:output actionbar append value '{"text":"\\uE021","font":"minecraft:keybinds"}'
execute unless predicate wasd:w run data modify storage wasd:output actionbar append value '{"text":"\\uE020","font":"minecraft:keybinds"}'
data modify storage wasd:output actionbar append value '{"text":"\\uF80A\\uF807","font":"space:default"}'

execute if predicate wasd:a run data modify storage wasd:output actionbar append value '{"text":"\\uE031","font":"minecraft:keybinds"}'
execute unless predicate wasd:a run data modify storage wasd:output actionbar append value '{"text":"\\uE030","font":"minecraft:keybinds"}'
data modify storage wasd:output actionbar append value '{"text":"\\uF80A\\uF828\\uF821","font":"space:default"}'


execute if predicate wasd:s run data modify storage wasd:output actionbar append value '{"text":"\\uE041","font":"minecraft:keybinds"}'
execute unless predicate wasd:s run data modify storage wasd:output actionbar append value '{"text":"\\uE040","font":"minecraft:keybinds"}'
data modify storage wasd:output actionbar append value '{"text":"\\uF80A\\uF808\\uF803","font":"space:default"}'

execute if predicate wasd:d run data modify storage wasd:output actionbar append value '{"text":"\\uE051","font":"minecraft:keybinds"}'
execute unless predicate wasd:d run data modify storage wasd:output actionbar append value '{"text":"\\uE050","font":"minecraft:keybinds"}'
data modify storage wasd:output actionbar append value '{"text":"\\uF80B\\uF821","font":"space:default"}'

execute if predicate wasd:space run data modify storage wasd:output actionbar append value '{"text":"\\uE001","font":"minecraft:keybinds"}'
execute unless predicate wasd:space run data modify storage wasd:output actionbar append value '{"text":"\\uE000","font":"minecraft:keybinds"}'

data modify storage wasd:output actionbar append value '{"text":"\\uF80B\\uF821","font":"space:default"}'

execute if predicate wasd:shift run data modify storage wasd:output actionbar append value '{"text":"\\uE011","font":"minecraft:keybinds"}'
execute unless predicate wasd:shift run data modify storage wasd:output actionbar append value '{"text":"\\uE010","font":"minecraft:keybinds"}'


title @s actionbar [{"nbt":"actionbar[]","storage":"wasd:output","interpret":true,"separator": ""}]