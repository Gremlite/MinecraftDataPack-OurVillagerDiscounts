scoreboard players set #player_gossip ourvillagerdiscounts_gossip 0
$execute store result score #player_gossip ourvillagerdiscounts_gossip run data get entity @s Gossips[{Target:$(UUID)}].Value
