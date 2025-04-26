#> spawner:spawn/delay
# モブのスポーンを遅延させるコマンド

# スポーンしてからの経過時間を計算
    execute store result score #GameTime Temp run time query gametime
    execute store result score #SpawnedTime Temp run data get storage spawner: data.SpawnedTime
    scoreboard players operation #GameTime Temp -= #SpawnedTime Temp

# 召喚を遅らせる時間を取得
    execute store result score #Delay Temp run data get storage spawner: data.Delay
    execute unless score #Delay Temp matches 1.. run scoreboard players set #Delay Temp 72000

# スポーンから経過した時間が召喚を遅らせる時間を超えたら召喚可能なモブを絞り込む
    execute if score #GameTime Temp >= #Delay Temp run function spawner:spawn/potential/requirement/weather

# スコアリセット
    scoreboard players reset #GameTime Temp
    scoreboard players reset #SpawnedTime Temp
    scoreboard players reset #Delay Temp
