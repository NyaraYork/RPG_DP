#> mob:attribute/grant_xp/calc
# プレイヤーに与える経験値を計算するコマンド

# プレイヤーに与える経験値を計算
    scoreboard players operation @s XPGrant *= @s Level
    scoreboard players operation #GrantXP Temp = @s XPGrant
    $execute store result score #AttackedPlayerCount Temp if entity @a[tag=attacked_$(value)]
    scoreboard players operation #GrantXP Temp /= #AttackedPlayerCount Temp

# プレイヤーに経験値を与える
    $execute as @a[tag=attacked_$(value)] at @s run function player:attribute/xp/grant

# リセット
    $tag @a[tag=attacked_$(value)] remove attacked_$(value)
    scoreboard players reset #GrantXP Temp
    scoreboard players reset #AttackedPlayerCount Temp
