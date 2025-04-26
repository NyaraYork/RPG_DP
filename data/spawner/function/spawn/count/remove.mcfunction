#> spawner:spawn/count/remove
# SpawnCountが0になるまでモブを召喚するコマンド

# 召喚するモブを選択
    data modify storage spawner: data.SpawnPotentialsBuf set from storage spawner: data.SpawnPotentials
    data modify storage lib: random.Min set value 1
    execute store result storage lib: random.Max int 1 run scoreboard players get #WeightSum Temp
    execute store result score #Target Temp run function lib:random with storage lib: random
    function spawner:spawn/mob/select

# 召喚するモブのレベルを決定
    execute store result score #MobLevel Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].LevelDifference
    scoreboard players operation #MobLevel Temp += @p[gamemode=!spectator] Level
    execute store result score #MinLevel Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].MinLevel
    execute unless score #MinLevel Temp matches 1.. run scoreboard players set #MinLevel Temp 1
    scoreboard players operation #MobLevel Temp > #MinLevel Temp
    execute store result score #MaxLevel Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].MaxLevel
    execute unless score #MaxLevel Temp matches 1.. run scoreboard players set #MaxLevel Temp 100
    scoreboard players operation #MobLevel Temp < #MaxLevel Temp

# 召喚する座標を決定
    execute store result storage lib: random.Min int -1 run data get storage spawner: data.SpawnRange
    execute store result storage lib: random.Max int 1 run data get storage spawner: data.SpawnRange
    execute store result score #SpreadPosX Temp run function lib:random with storage lib: random
    execute store result score #SpreadPosZ Temp run function lib:random with storage lib: random
    execute store result storage spawner: data.SpawnPosX int 1 run scoreboard players operation #SpreadPosX Temp += #SpawnerPosX Temp
    execute store result storage spawner: data.SpawnPosZ int 1 run scoreboard players operation #SpreadPosZ Temp += #SpawnerPosZ Temp
    function spawner:spawn/mob/spread with storage spawner: data

# SpawnCountを1減らす
    scoreboard players remove #SpawnCount Temp 1

# SpawnCountが0になるまで再帰
    execute if score #SpawnCount Temp matches 1.. run return run function spawner:spawn/count/remove

# スコアリセット
    scoreboard players reset #Target Temp
    scoreboard players reset #MobLevel Temp
    scoreboard players reset #MinLevel Temp
    scoreboard players reset #MaxLevel Temp
    scoreboard players reset #SpreadPosX Temp
    scoreboard players reset #SpreadPosZ Temp
