#> player:display/attribute/healing_curse/bar/add
# プレイヤーの回復の呪いの残量表示を追加するコマンド

# Countを1増やす
    scoreboard players add #Count Temp 1

# 回復の呪いの残量表示に必要な値を設定
    execute if score #Count Temp <= #HealingCurse Temp run data modify storage player: HealingCurse prepend value 1
    execute if score #Count Temp > #HealingCurse Temp run data modify storage player: HealingCurse prepend value 0

# 10回実行するまで再帰
    execute if score #Count Temp matches ..9 run function player:display/attribute/healing_curse/bar/add
