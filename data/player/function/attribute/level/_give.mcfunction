#> player:attribute/level/_give
# プレイヤーに経験値を与えるコマンド(テスト用)

# 経験値を与える
    scoreboard players add @s XP 100000
    execute at @s if score @s Level matches 1..99 if score @s XP >= @s XPRequired run function player:attribute/level/up
