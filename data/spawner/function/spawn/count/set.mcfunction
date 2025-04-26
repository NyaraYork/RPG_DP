#> spawner:spawn/count/set
# 召喚するモブの数を設定するコマンド

# 取得したスポナーのX,Z座標を整数にする
    scoreboard players operation #SpawnerPosX Temp /= #10 Const
    scoreboard players operation #SpawnerPosZ Temp /= #10 Const

# 召喚した時間を記録
    execute store result entity @s data.SpawnedTime int 1 run time query gametime

# 召喚するモブの数を設定
    data modify storage lib: random.Min set from storage spawner: data.MinSpawnCount
    data modify storage lib: random.Max set from storage spawner: data.MaxSpawnCount
    execute store result score #SpawnCount Temp run function lib:random with storage lib: random

# プレイヤーの平均レベルを計算
    scoreboard players operation #PlayerLevelAverage Temp += @a Level
    execute store result score #PlayerCount Temp if entity @a
    scoreboard players operation #PlayerLevelAverage Temp /= #PlayerCount Temp

# SpawnCountが0になるまでモブを召喚
    function spawner:spawn/count/remove

# リセット
    data remove storage lib: random
    scoreboard players reset #SpawnCount Temp
    scoreboard players reset #PlayerLevelAverage Temp
    scoreboard players reset #PlayerCount Temp
