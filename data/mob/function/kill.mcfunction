#> mob:kill
# モブをキルするコマンド

# モブの種類ごとに個別のキル処理
    $function asset:mob/$(ID)/kill

# プレイヤーに与える経験値を計算
    function mob:attribute/grant_xp/calc with storage common: VictimID

# キル
    kill @s
