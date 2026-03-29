#> mob:attribute/xp/point/grant
# プレイヤーに経験値を与えるコマンド

# プレイヤーに与える経験値を計算
    scoreboard players operation #GrantXP Temp = @s XPGrant
    scoreboard players operation #GrantXP Temp *= @s Level
    $execute store result score #AttackedPlayerCount Temp if entity @a[tag=attacked_$(value),scores={Level=1..99}]
    scoreboard players operation #GrantXP Temp /= #AttackedPlayerCount Temp

# プレイヤーに経験値を与える
    $execute as @a[tag=attacked_$(value),scores={Level=1..99}] at @s run function player:attribute/xp/point/grant

# リセット
    $tag @a[tag=attacked_$(value)] remove attacked_$(value)
    scoreboard players reset #GrantXP Temp
    scoreboard players reset #AttackedPlayerCount Temp
