#> mob:attribute/update
# モブのステータスを更新するコマンド

# モブの基礎ステータスを設定
    $function asset:mob/$(ID)/attribute/set

# ステータス補正値を適用
    function common:attribute/calc
