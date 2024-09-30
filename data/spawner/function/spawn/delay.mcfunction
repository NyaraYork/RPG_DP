#> spawner:spawn/delay
# モブのスポーンを遅延させるコマンド
    #declare score_holder #GameTime
    #declare score_holder #LastSpawnedTime
    #declare score_holder #Delay

# スポーンしてからの経過ティック数を計算
    execute store result score #GameTime Temp run time query gametime
    execute store result score #LastSpawnedTime Temp run data get storage spawner: data.LastSpawnedTime
    scoreboard players operation #GameTime Temp -= #LastSpawnedTime Temp

# 経過ティック数が遅延ティック数以上になったら召喚可能なモブを絞り込む
    execute store result score #Delay Temp run data get storage spawner: data.Delay
    execute if score #GameTime Temp >= #Delay Temp run function spawner:spawn/weight/get

# スコアリセット
    scoreboard players reset #GameTime Temp
    scoreboard players reset #LastSpawnedTime Temp
    scoreboard players reset #Delay Temp
