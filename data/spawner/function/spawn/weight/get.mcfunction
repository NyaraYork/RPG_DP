#> spawner:spawn/weight/get
# 召喚するモブの合計Weightを取得するコマンド
    #declare score_holder #MinSpawnableLevel
    #declare score_holder #MaxSpawnableLevel
    #declare score_holder #DayTime
    #declare score_holder #MinSpawnableTime
    #declare score_holder #MaxSpawnableTime
    #declare score_holder #Weight
    #declare score_holder #WeightSum

# プレイヤーのレベルが指定の範囲内でなければその要素を削除
    execute store result score #MinSpawnableLevel Temp run data get storage spawner: data.SpawnPotentials[0].Requirements.MinSpawnableLevel
    execute store result score #MaxSpawnableLevel Temp run data get storage spawner: data.SpawnPotentials[0].Requirements.MaxSpawnableLevel
    execute if score #MinSpawnableLevel Temp matches 1.. if score @p[gamemode=!spectator] Level < #MinSpawnableLevel Temp run return run function spawner:spawn/weight/remove
    execute if score #MaxSpawnableLevel Temp matches 1.. if score @p[gamemode=!spectator] Level > #MaxSpawnableLevel Temp run return run function spawner:spawn/weight/remove

# 時刻が指定の範囲内でなければその要素を削除
    execute store result score #DayTime Temp run time query daytime
    execute store result score #MinSpawnableTime Temp run data get storage spawner: data.SpawnPotentials[0].Requirements.MinSpawnableTime
    execute store result score #MaxSpawnableTime Temp run data get storage spawner: data.SpawnPotentials[0].Requirements.MaxSpawnableTime
    execute if score #MinSpawnableTime Temp matches 1.. if score #DayTime Temp < #MinSpawnableTime Temp run return run function spawner:spawn/weight/remove
    execute if score #MaxSpawnableTime Temp matches 1.. if score #DayTime Temp > #MaxSpawnableTime Temp run return run function spawner:spawn/weight/remove

# 全ての条件を満たしたらWeightの値を合算
    execute store result score #Weight Temp run data get storage spawner: data.SpawnPotentials[0].Weight
    scoreboard players operation #WeightSum Temp += #Weight Temp
    data modify storage spawner: data.SpawnPotential append from storage spawner: data.SpawnPotentials[0]

# 要素を削除
    function spawner:spawn/weight/remove
