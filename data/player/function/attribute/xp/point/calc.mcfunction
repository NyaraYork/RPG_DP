#> player:attribute/xp/point/calc
# 必要経験値量を計算するコマンド

# レベルアップ
    scoreboard players add @s Level 1

# 獲得した経験値は超過した分だけ残す
    scoreboard players operation @s XP -= @s XPRequired

# 必要な経験値を計算
    scoreboard players set @s XPRequired 3
    scoreboard players operation @s XPRequired *= @s Level
    scoreboard players add @s XPRequired 19
    scoreboard players operation @s XPRequired *= @s XPRequired
    scoreboard players add @s XPRequired 143

# 獲得した経験値が必要な経験値を下回るまで再帰
    execute if score @s Level matches 1..99 if score @s XP >= @s XPRequired run function player:attribute/xp/point/calc
