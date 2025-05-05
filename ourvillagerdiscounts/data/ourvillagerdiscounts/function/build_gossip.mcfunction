data modify storage ourvillagerdiscounts:scratch_gossip UUID set from entity @p[limit=1,sort=nearest] UUID
execute as @s run function ourvillagerdiscounts:assign_player_gossip with storage ourvillagerdiscounts:scratch_gossip
scoreboard players set #current_gossip ourvillagerdiscounts_gossip 0
scoreboard players set #max_gossip ourvillagerdiscounts_gossip 0
data merge storage ourvillagerdiscounts:scratch_string {"StringA":"major_positive"}
execute store result score #gossip_count ourvillagerdiscounts_gossip if data entity @s Gossips[]
scoreboard players set #ourvillagerdiscounts_index minescript_for_scores 0
execute if score #ourvillagerdiscounts_index minescript_for_scores < #gossip_count ourvillagerdiscounts_gossip run function ourvillagerdiscounts:build_gossip/for_score
execute if score #max_gossip ourvillagerdiscounts_gossip matches 0 run return fail
execute if score #max_gossip ourvillagerdiscounts_gossip = #player_gossip ourvillagerdiscounts_gossip run return fail
particle minecraft:wax_on ^ ^1 ^ 0.25 0.25 0.25 0 15 normal
execute store result storage ourvillagerdiscounts:scratch_gossip Value int 1 run scoreboard players get #max_gossip ourvillagerdiscounts_gossip
execute as @s run function ourvillagerdiscounts:merge_nbt with storage ourvillagerdiscounts:scratch_gossip
