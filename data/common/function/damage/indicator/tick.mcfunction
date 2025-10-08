#> common:damage/indicator/tick
# ダメージ表示エンティティに常時実行するコマンド

# 残り表示ティック数が0の場合キル
    kill @s[scores={DisplayTicks=0}]

# 少しずつ上昇
    tp ~ ~0.1 ~

# 残り表示ティック数を減らす
    scoreboard players remove @s DisplayTicks 1
