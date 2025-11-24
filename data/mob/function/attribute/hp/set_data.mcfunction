#> mob:attribute/hp/set_data
# モブのHPバー表示に必要なデータを設定するコマンド

# Countを1増やす
    scoreboard players add #Count Temp 1

# HPバー表示に必要な値を設定
    execute if score #Count Temp <= #HPRatio Temp run data modify storage mob: HPBar append value 1
    execute if score #Count Temp > #HPRatio Temp run data modify storage mob: HPBar append value 0

# HPBarLengthの値まで再帰
    execute if score #Count Temp < @s HPBarLength run function mob:attribute/hp/set_data
