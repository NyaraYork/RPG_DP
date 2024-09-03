#> common:attribute
# エンティティのステータスを計算するコマンド

# レベルをもとに計算
    scoreboard players operation @s HPMax *= @s Level
    scoreboard players operation @s Attack *= @s Level
    scoreboard players operation @s Defence *= @s Level
