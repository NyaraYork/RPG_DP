#> mob:kill
# モブをキルするコマンド

# モブの種類ごとに個別のキル処理
    $function asset:mob/$(ID)/kill

# プレイヤーに与える経験値を計算
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID
    function mob:attribute/grant_xp/calc with storage common: ID

# キル
    kill @s
