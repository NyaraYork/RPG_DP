#> asset:mob/skeleton/kill
# スケルトンのキル処理をするコマンド

# 獲得基礎経験値量を設定
    scoreboard players set @s XPGrant 1

# レベルとHPバーの表示を消去
    execute on passengers run kill @s
