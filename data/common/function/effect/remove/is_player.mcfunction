#> common:effect/remove/is_player
# プレイヤーとそれ以外でステータス更新処理を分けるコマンド

# プレイヤーの場合
    execute if entity @s[type=player] run return run function player:attribute/update

# モブの場合
    function mob:attribute/update with entity @s data
