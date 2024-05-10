##WASD DETECTION
execute as @a unless score @s lock_id matches 1.. run function wasd:z_backend/new_id
execute as @a at @s run function wasd:z_backend/data

##SHIFT DETECTION
execute as @a[scores={sneak=1..}] run function wasd:z_backend/shift

##CHANGE OUTPUT FUNCTIONS
execute as @a if score @s wasd_output matches -999999999.. run function wasd:z_backend/change_output

##OUTPUT EXAMPLES
#execute as @a run function wasd:outputs/actionbar
#function wasd:outputs/fancy
#function wasd:outputs/title