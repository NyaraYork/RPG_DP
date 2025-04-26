#> spawner:tick
# スポナーに毎ティック実行するコマンド

# プレイヤーの座標を取得
    data modify storage player: Pos set from entity @p[gamemode=!spectator] Pos
    execute store result score #PlayerPosX Temp run data get storage player: Pos[0] 10
    execute store result score #PlayerPosY Temp run data get storage player: Pos[1] 10
    execute store result score #PlayerPosZ Temp run data get storage player: Pos[2] 10

# スポナーの座標を取得
    data modify storage spawner: Pos set from entity @s Pos
    execute store result score #SpawnerPosX Temp run data get storage spawner: Pos[0] 10
    execute store result score #SpawnerPosY Temp run data get storage spawner: Pos[1] 10
    execute store result score #SpawnerPosZ Temp run data get storage spawner: Pos[2] 10

# プレイヤーとスポナーの距離を計算
    scoreboard players operation #PlayerPosX Temp -= #SpawnerPosX Temp
    scoreboard players operation #PlayerPosY Temp -= #SpawnerPosY Temp
    scoreboard players operation #PlayerPosZ Temp -= #SpawnerPosZ Temp

    scoreboard players operation #PlayerPosX Temp *= #PlayerPosX Temp
    scoreboard players operation #PlayerPosY Temp *= #PlayerPosY Temp
    scoreboard players operation #PlayerPosZ Temp *= #PlayerPosZ Temp

    scoreboard players operation #Distance Temp += #PlayerPosX Temp
    scoreboard players operation #Distance Temp += #PlayerPosY Temp
    scoreboard players operation #Distance Temp += #PlayerPosZ Temp

# プレイヤー検知可能距離を取得
    data modify storage spawner: data set from entity @s data
    execute store result score #RequiredPlayerRange Temp run data get storage spawner: data.RequiredPlayerRange 10
    execute unless score #RequiredPlayerRange Temp matches 1.. run scoreboard players set #RequiredPlayerRange Temp 160
    scoreboard players operation #RequiredPlayerRange Temp *= #RequiredPlayerRange Temp

# プレイヤーが検知可能距離にいれば召喚
    execute if score #Distance Temp <= #RequiredPlayerRange Temp if data storage spawner: data.SpawnedTime run function spawner:spawn/delay
    execute if score #Distance Temp <= #RequiredPlayerRange Temp unless data storage spawner: data.SpawnedTime run function spawner:spawn/potential/requirement/weather

# リセット
    data remove storage player: Pos
    data remove storage spawner: Pos
    data remove storage spawner: data
    scoreboard players reset #PlayerPosX Temp
    scoreboard players reset #PlayerPosY Temp
    scoreboard players reset #PlayerPosZ Temp
    scoreboard players reset #SpawnerPosX Temp
    scoreboard players reset #SpawnerPosY Temp
    scoreboard players reset #SpawnerPosZ Temp
    scoreboard players reset #Distance Temp
    scoreboard players reset #RequiredPlayerRange Temp
