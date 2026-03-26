#> player:attribute/update
# プレイヤーのステータスを更新するコマンド

# 職業ごとに異なる基礎ステータスを設定
    execute if entity @s[team=] run function player:job/none/attribute/set

# エフェクトのステータスを反映
    function common:attribute/calc

# HPバーに反映
    function player:attribute/hp/update
