#> mob:kill
# モブをキルするコマンド

# モブの種類ごとに個別のキル処理
    $function asset:mob/$(ID)/kill

# プレイヤーに与える経験値を計算
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID
    function mob:attribute/xp/point/grant with storage common: ID

# キル
    kill @s

# ストレージ削除
    data remove storage common: ID
