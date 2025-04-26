#> spawner:spawn/mob/select
# 召喚するモブを選択するコマンド

# Targetの値を末尾の要素のWeightで減算
    execute store result score #Weight Temp run data get storage spawner: data.SpawnPotentialsBuf[-1].Weight
    scoreboard players operation #Target Temp -= #Weight Temp

# Targetの値が0以下になったら末尾のモブIDを召喚するモブのIDに格納
    execute if score #Target Temp matches ..0 run return run data modify storage spawner: data.ID set from storage spawner: data.SpawnPotentialsBuf[-1].ID

# Targetの値が0以下でない場合末尾の要素を削除して再帰
    data remove storage spawner: data.SpawnPotentialsBuf[-1]
    function spawner:spawn/mob/select
