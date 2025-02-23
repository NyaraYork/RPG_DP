#> spawner:spawn/potential/remove
# 召喚するモブの要素を削除するコマンド

# 要素を削除
    data remove storage spawner: data.SpawnPotentialsBuf[-1]

# 要素がなくなるまで再帰
    execute if data storage spawner: data.SpawnPotentialsBuf[-1] run return run function spawner:spawn/potential/requirement/value

# 召喚可能なモブの要素があったら召喚するモブの数を決め召喚
    execute if data storage spawner: data.SpawnPotentials[-1] run function spawner:spawn/count/set

# スコアリセット
    scoreboard players reset #MinSpawnableLevel Temp
    scoreboard players reset #MaxSpawnableLevel Temp
    scoreboard players reset #DayTime Temp
    scoreboard players reset #MinSpawnableTime Temp
    scoreboard players reset #MaxSpawnableTime Temp
    scoreboard players reset #Weight Temp
    scoreboard players reset #WeightSum Temp
