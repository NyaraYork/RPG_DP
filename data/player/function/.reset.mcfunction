#> player:.reset
# プレイヤーのデータをリセットするコマンド(テスト用)

# スコアをリセット
    scoreboard players reset @s EntityID
    scoreboard players reset @s Level
    scoreboard players reset @s XP
    scoreboard players reset @s XPRequired

# 経験値の進行度をリセット
    xp set @s 0 points

# チームから脱退
    team leave @s 
