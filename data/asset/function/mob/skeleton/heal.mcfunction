#> asset:mob/skeleton/heal
# スケルトンを回復するコマンド

# 回復演出
    execute anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ summon text_display run function indicator:healing/init

# HPバーに反映
    function mob:display/attribute/hp/update
