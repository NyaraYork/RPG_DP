#> player:hurt
# プレイヤーがダメージを受けたときに実行するコマンド

# ダメージ演出
    damage @s 0.0
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function common:damage/indicator/init

# HPバーに反映
    function player:attribute/hp/value

# HPが0以下の場合キル
    kill @s[scores={HP=..0}]
