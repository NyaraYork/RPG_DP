#> spawner:spawn/potential/requirement/value
# その他の値の条件をもとに召喚するモブを絞り込むコマンド
    #declare score_holder #MinSpawnableLevel
    #declare score_holder #MaxSpawnableLevel
    #declare score_holder #DayTime
    #declare score_holder #MinSpawnableTime
    #declare score_holder #MaxSpawnableTime
    #declare score_holder #Weight
    #declare score_holder #WeightSum

# プレイヤーのレベルが指定の範囲内でなければその要素を削除
    execute store result score #MinSpawnableLevel Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].Requirements.MinSpawnableLevel
    execute store result score #MaxSpawnableLevel Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].Requirements.MaxSpawnableLevel
    execute if score #MinSpawnableLevel Temp matches 1.. if score @p[gamemode=!spectator] Level < #MinSpawnableLevel Temp run return run function spawner:spawn/potential/remove
    execute if score #MaxSpawnableLevel Temp matches 1.. if score @p[gamemode=!spectator] Level > #MaxSpawnableLevel Temp run return run function spawner:spawn/potential/remove

# 時刻が指定の範囲内でなければその要素を削除
    execute store result score #DayTime Temp run time query daytime
    execute store result score #MinSpawnableTime Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].Requirements.MinSpawnableTime
    execute store result score #MaxSpawnableTime Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].Requirements.MaxSpawnableTime
    execute if score #MinSpawnableTime Temp matches 1.. if score #DayTime Temp < #MinSpawnableTime Temp run return run function spawner:spawn/potential/remove
    execute if score #MaxSpawnableTime Temp matches 1.. if score #DayTime Temp > #MaxSpawnableTime Temp run return run function spawner:spawn/potential/remove

# 全ての条件を満たしたらWeightの値を合算
    execute store result score #Weight Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].Weight
    scoreboard players operation #WeightSum Temp += #Weight Temp
    data modify storage spawner: data.SpawnPotentials prepend from storage spawner: data.SpawnPotentialsBuf[-1]

# 要素を削除
    function spawner:spawn/potential/remove
