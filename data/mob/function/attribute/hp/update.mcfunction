#> mob:attribute/hp/update
# モブのHPバーを更新するコマンド

# HP割合を計算
    scoreboard players operation #HPRatio Temp = @s HPBarLength
    scoreboard players operation #HPRatio Temp *= @s HP
    scoreboard players operation #HPRatio Temp /= @s HPMax

# モブのHPバー表示に必要なデータを設定
    function mob:attribute/hp/set_data

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
