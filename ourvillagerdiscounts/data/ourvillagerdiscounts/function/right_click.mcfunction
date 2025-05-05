advancement revoke @s only ourvillagerdiscounts:right_click
scoreboard objectives add minescript_raycast_count dummy
execute as @s run scoreboard players set @s minescript_raycast_count 0
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function ourvillagerdiscounts:right_click/raycast/step
