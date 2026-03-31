#> mob:display/attribute/hp/update
# モブのHPバーを更新するコマンド

# HP割合を計算
    scoreboard players operation #Ratio Temp = @s HPBarLength
    scoreboard players operation #Ratio Temp *= @s HP
    scoreboard players operation #Ratio Temp /= @s HPMax

# モブのHPバー表示に必要なデータを設定
    function mob:display/attribute/set

# HPバーの両端に枠を入れる
    data modify storage mob: bar prepend value 2
    data modify storage mob: bar append value 2

# HP割合を百分率に換算
    scoreboard players operation #Ratio Temp *= #100 Const
    scoreboard players operation #Ratio Temp /= @s HPBarLength

# テキストディスプレイにHPバーを表示
    execute if score #Ratio Temp matches 51.. on passengers run data modify entity @s[tag=HPBar] text set value {color:"dark_green",font:"mob:display/attribute/hp",plain:true,nbt:"bar[]",storage:"mob:",separator:"3"}
    execute if score #Ratio Temp matches 26..50 on passengers run data modify entity @s[tag=HPBar] text set value {color:"gold",font:"mob:display/attribute/hp",plain:true,nbt:"bar[]",storage:"mob:",separator:"3"}
    execute if score #Ratio Temp matches ..25 on passengers run data modify entity @s[tag=HPBar] text set value {color:"dark_red",font:"mob:display/attribute/hp",plain:true,nbt:"bar[]",storage:"mob:",separator:"3"}

# リセット
    data remove storage mob: bar
    scoreboard players reset #Ratio Temp
