execute if score @s minescript_raycast_count matches 20.. run return fail
scoreboard players add @s minescript_raycast_count 1
tag @s remove minescript_raycast_hit
execute unless block ~ ~ ~ minecraft:air run tag @s add minescript_raycast_hit
execute positioned ~ ~-1 ~ if entity @e[distance=..1.1,type=minecraft:villager] run tag @s add minescript_raycast_hit
execute if entity @s[tag=minescript_raycast_hit] run execute as @e[limit=1,sort=nearest,type=minecraft:villager] at @s run function ourvillagerdiscounts:build_gossip
execute unless entity @s[tag=minescript_raycast_hit] positioned ^ ^ ^0.5 run function ourvillagerdiscounts:right_click/raycast/step
