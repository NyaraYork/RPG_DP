#> spawner:spawn/count/set
# 召喚するモブの数を設定するコマンド
    #declare score_holder #SpawnCount

# 召喚した時間を記録
    execute store result entity @s data.LastSpawnedTime int 1 run time query gametime

# 取得したスポナーの座標の小数点を切り捨てる
    scoreboard players operation #SpawnerPosX Temp /= #10 Const
    scoreboard players operation #SpawnerPosZ Temp /= #10 Const

# 召喚するモブの数を設定
    data modify storage common: random.Min set from storage spawner: data.MinSpawnCount
    data modify storage common: random.Max set from storage spawner: data.MaxSpawnCount
    execute store result score #SpawnCount Temp run function common:math/random with storage common: random

# SpawnCountが0になるまでモブを召喚
    function spawner:spawn/count/remove

# リセット
    data remove storage common: random
    scoreboard players reset #SpawnCount Temp
