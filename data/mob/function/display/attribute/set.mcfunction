#> mob:display/attribute/set
# モブのステータス表示に必要なデータを設定するコマンド

# Countを1増やす
    scoreboard players add #Count Temp 1

# ステータス表示に必要な値を設定
    execute if score #Count Temp <= #Ratio Temp run data modify storage mob: bar append value 1
    execute if score #Count Temp > #Ratio Temp run data modify storage mob: bar append value 0

# HPBarLengthの値まで再帰
    execute if score #Count Temp < @s HPBarLength run return run function mob:display/attribute/set

# スコアリセット
    scoreboard players reset #Count Temp
