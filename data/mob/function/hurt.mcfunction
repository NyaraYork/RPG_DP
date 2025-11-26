#> mob:hurt
# モブがダメージを受けたときに実行するコマンド

# ダメージ演出
    $function asset:mob/$(ID)/hurt

# HPが0以下の場合キル処理
    execute if score @s HP matches ..0 run function mob:kill with entity @s data
