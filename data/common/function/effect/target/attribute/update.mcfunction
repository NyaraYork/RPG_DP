#> common:effect/target/attribute/update
# エフェクトの付与対象のエンティティのステータスを更新するコマンド

# プレイヤーの場合
    execute if entity @s[type=player] run return run function player:attribute/update

# それ以外の場合
    function mob:attribute/update with entity @s data
