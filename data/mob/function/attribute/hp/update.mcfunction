#> mob:attribute/hp/update
# モブのHPバーを更新するコマンド

# Countを1増やす
    scoreboard players add #Count Temp 1

# HPバー表示に必要な値を設定
    execute if score #Count Temp <= #HPRatio Temp run data modify storage mob: HPBar append value 1
    execute if score #Count Temp > #HPRatio Temp run data modify storage mob: HPBar append value 0

# HPBarLengthの値まで再帰
    execute if score #Count Temp < @s HPBarLength run return run function mob:attribute/hp/update

# HPバーの両端に枠を入れる
    data modify storage mob: HPBar prepend value 2
    data modify storage mob: HPBar append value 2

# HP割合を百分率に換算
    scoreboard players operation #HPRatio Temp *= #100 Const
    scoreboard players operation #HPRatio Temp /= @s HPBarLength

# テキストディスプレイにHPバーを表示
    execute if score #HPRatio Temp matches 51.. on passengers run data modify entity @s[tag=HPBar] text set value {color:"dark_green",font:"mob:hp_bar",nbt:"HPBar[]",storage:"mob:"}
    execute if score #HPRatio Temp matches 26..50 on passengers run data modify entity @s[tag=HPBar] text set value {color:"gold",font:"mob:hp_bar",nbt:"HPBar[]",storage:"mob:"}
    execute if score #HPRatio Temp matches ..25 on passengers run data modify entity @s[tag=HPBar] text set value {color:"dark_red",font:"mob:hp_bar",nbt:"HPBar[]",storage:"mob:"}

# リセット
    data remove storage mob: HPBar
    scoreboard players reset #Count Temp
