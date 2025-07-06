#> common:effect/update_attribute
# エフェクトを削除したエンティティのステータスを更新するコマンド

# プレイヤーの場合
    execute if entity @s[type=player] run return run function player:attribute/update

# モブの場合
    function mob:attribute/update with entity @s data
