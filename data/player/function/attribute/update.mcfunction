#> player:attribute/update
# プレイヤーのステータスを更新するコマンド

# 職業ごとに異なる基礎ステータスを設定
    execute if entity @s[team=] run function player:job/none/attribute/set

# エフェクトのステータスを反映
    scoreboard players operation @s MPMax *= @s Level
    function common:attribute/calc

# HPバーに反映
    function player:display/attribute/hp/bar/update

# プレイヤーにシールド表示バーを追加
    function player:display/attribute/shield/bar/add
