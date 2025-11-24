#> asset:mob/creeper/hurt
# クリーパーがダメージを受けたときに実行するコマンド

# ダメージ演出
    damage @s 0.0
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function common:damage/indicator/init

# HPバーに反映
    function mob:attribute/hp/update
