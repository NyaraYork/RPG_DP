#> asset:mob/zombie/hurt
# ゾンビにダメージを与えるコマンド

# ダメージ演出
    damage @s 0.0
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function indicator:damage/init

# HPバーに反映
    function mob:display/attribute/hp/update
