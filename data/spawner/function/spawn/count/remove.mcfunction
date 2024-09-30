#> spawner:spawn/count/remove
# SpawnCountが0になるまでモブを召喚するコマンド
    #declare score_holder #MobKey
    #declare score_holder #SpreadPosX
    #declare score_holder #SpreadPosZ

# SpawnCountを1下げる
    scoreboard players remove #SpawnCount Temp 1

# 召喚可能なモブの配列(SpawnPotential)をSpawnPotentialsにコピー
    data modify storage spawner: data.SpawnPotentials set from storage spawner: data.SpawnPotential

# 召喚するモブを選択
    data modify storage common: random.Min set value 1
    execute store result storage common: random.Max int 1 run scoreboard players get #WeightSum Temp
    execute store result score #MobKey Temp run function common:math/random with storage common: random
    function spawner:spawn/mob/select

# 召喚する座標を決定
    execute store result storage common: random.Min int -1 run data get storage spawner: data.SpawnRange
    execute store result storage common: random.Max int 1 run data get storage spawner: data.SpawnRange
    execute store result score #SpreadPosX Temp run function common:math/random with storage common: random
    execute store result score #SpreadPosZ Temp run function common:math/random with storage common: random
    execute store result storage spawner: data.SpawnPosX int 1 run scoreboard players operation #SpreadPosX Temp += #SpawnerPosX Temp
    execute store result storage spawner: data.SpawnPosZ int 1 run scoreboard players operation #SpreadPosZ Temp += #SpawnerPosZ Temp
    function spawner:spawn/mob/spread with storage spawner: data

# SpawnCountが0になるまで再帰
    execute if score #SpawnCount Temp matches 1.. run return run function spawner:spawn/count/remove

# スコアリセット
    scoreboard players reset #MobKey Temp
    scoreboard players reset #SpreadPosX Temp
    scoreboard players reset #SpreadPosZ Temp
