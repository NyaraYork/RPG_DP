#> player:hurt
# プレイヤーにダメージを与えるコマンド

# ダメージ演出
    damage @s 0.0
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function indicator:damage/init

# HPが0以下の場合キル
    execute if score @s HP matches ..0 run function player:kill

# HPバーに反映
    function player:display/attribute/hp/value/update
