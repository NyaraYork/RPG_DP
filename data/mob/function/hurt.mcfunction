#> mob:hurt
# モブにダメージを与えるコマンド

# ダメージ演出
    $function asset:mob/$(ID)/hurt

# HPが0以下の場合キル処理
    execute if score @s HP matches ..0 run function mob:kill with entity @s data
