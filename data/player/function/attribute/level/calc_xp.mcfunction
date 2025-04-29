#> player:attribute/level/calc_xp
# 次のレベルに必要な経験値を計算するコマンド

# レベルアップ
    scoreboard players add @s Level 1

# 無限にレベルアップできないようにする
    scoreboard players operation @s XP -= @s XPRequired

# 次のレベルに必要な経験値を計算
    scoreboard players set @s XPRequired 2
    scoreboard players operation @s XPRequired += @s Level
    scoreboard players operation @s XPRequired *= @s Level

# 獲得した経験値が必要な経験値を下回るまでレベルアップ
    execute if score @s Level matches 1..99 if score @s XP >= @s XPRequired run function player:attribute/level/calc_xp
