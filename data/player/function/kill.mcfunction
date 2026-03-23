#> player:kill
# プレイヤーのキル処理をするコマンド

# キル
    kill @s

# HP全快
    scoreboard players operation @s HP = @s HPMax

# 2ティック後にダメージ耐性を再付与
    tag @s add ApplyResistance
    scoreboard players set @s ExecutionDelay 2
