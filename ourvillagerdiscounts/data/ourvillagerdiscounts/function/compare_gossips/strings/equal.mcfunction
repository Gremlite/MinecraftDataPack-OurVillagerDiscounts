$execute store result score #current_gossip ourvillagerdiscounts_gossip run data get entity @s Gossips[$(Index)].Value
scoreboard players operation #max_gossip ourvillagerdiscounts_gossip > #current_gossip ourvillagerdiscounts_gossip
