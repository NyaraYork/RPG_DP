#> spawner:tick
# スポナーに毎ティック実行するコマンド
    #declare score_holder #PlayerPosX
    #declare score_holder #PlayerPosY
    #declare score_holder #PlayerPosZ
    #declare score_holder #SpawnerPosX
    #declare score_holder #SpawnerPosY
    #declare score_holder #SpawnerPosZ
    #declare score_holder #Distance
    #declare score_holder #RequiredPlayerRange
    #declare storage spawner:
    #declare tag spawner

# プレイヤーの検知に必要な距離とクールタイムの初期化
    data modify storage spawner: data set from entity @s data
    execute unless data storage spawner: data.RequiredPlayerRange run data modify storage spawner: data.RequiredPlayerRange set value 16.0d
    execute unless data storage spawner: data.Delay run data modify storage spawner: data.Delay set value 72000
    data modify entity @s data set from storage spawner: data

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

# プレイヤーとの距離を計算
    scoreboard players operation #PlayerPosX Temp -= #SpawnerPosX Temp
    scoreboard players operation #PlayerPosY Temp -= #SpawnerPosY Temp
    scoreboard players operation #PlayerPosZ Temp -= #SpawnerPosZ Temp

    scoreboard players operation #PlayerPosX Temp *= #PlayerPosX Temp
    scoreboard players operation #PlayerPosY Temp *= #PlayerPosY Temp
    scoreboard players operation #PlayerPosZ Temp *= #PlayerPosZ Temp

    scoreboard players operation #Distance Temp += #PlayerPosX Temp
    scoreboard players operation #Distance Temp += #PlayerPosY Temp
    scoreboard players operation #Distance Temp += #PlayerPosZ Temp

# プレイヤーが検知できる範囲にいるか検知
    execute store result score #RequiredPlayerRange Temp run data get storage spawner: data.RequiredPlayerRange 10
    scoreboard players operation #RequiredPlayerRange Temp *= #RequiredPlayerRange Temp
    execute if score #Distance Temp <= #RequiredPlayerRange Temp if data storage spawner: data.LastSpawnedTime run function spawner:spawn/delay
    execute if score #Distance Temp <= #RequiredPlayerRange Temp unless data storage spawner: data.LastSpawnedTime run function spawner:spawn/weight/get

# リセット
    data remove storage spawner: data
    data remove storage player: Pos
    data remove storage spawner: Pos
    scoreboard players reset #PlayerPosX Temp
    scoreboard players reset #PlayerPosY Temp
    scoreboard players reset #PlayerPosZ Temp
    scoreboard players reset #SpawnerPosX Temp
    scoreboard players reset #SpawnerPosY Temp
    scoreboard players reset #SpawnerPosZ Temp
    scoreboard players reset #Distance Temp
    scoreboard players reset #RequiredPlayerRange Temp
