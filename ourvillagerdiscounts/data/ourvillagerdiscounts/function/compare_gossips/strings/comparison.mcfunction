data remove storage ourvillagerdiscounts:minescript_strings_equal test
$data modify storage ourvillagerdiscounts:minescript_strings_equal {} merge value {"test":{"$(StringA)":1}}
$data modify storage ourvillagerdiscounts:minescript_strings_equal {} merge value {"test":{"$(StringB)":1}}
execute store result score #ourvillagerdiscounts_index minescript_strings_equal run data get storage ourvillagerdiscounts:minescript_strings_equal test
execute if score #ourvillagerdiscounts_index minescript_strings_equal matches 1 run function ourvillagerdiscounts:compare_gossips/strings/equal with storage ourvillagerdiscounts:gossip_index
