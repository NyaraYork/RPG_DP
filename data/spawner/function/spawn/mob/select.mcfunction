#> spawner:spawn/mob/select
# 召喚するモブを選択するコマンド

# MobKeyの値を先頭の要素のWeightで減算
    execute store result score #Weight Temp run data get storage spawner: data.SpawnPotentials[0].Weight
    scoreboard players operation #MobKey Temp -= #Weight Temp

# MobKeyの値が0以下になったら召喚するモブの要素をSpawnDataに格納
    execute if score #MobKey Temp matches ..0 run return run data modify storage spawner: data.SpawnData set from storage spawner: data.SpawnPotentials[0]

# MobKeyの値が0以下でない場合取得した要素を削除し再帰
    data remove storage spawner: data.SpawnPotentials[0]
    function spawner:spawn/mob/select
