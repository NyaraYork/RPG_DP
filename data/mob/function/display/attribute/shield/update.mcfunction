#> mob:display/attribute/shield/update
# モブのシールド表示を更新するコマンド

# HPに対するシールド割合を計算
    scoreboard players operation #Ratio Temp = @s HPBarLength
    scoreboard players operation #Ratio Temp *= @s Shield
    scoreboard players operation #Ratio Temp /= @s HPMax

# モブのシールド表示に必要なデータを設定
    function mob:display/attribute/set

# シールド表示に枠を入れる
    execute if score @s Shield matches 1.. run data modify storage mob: bar prepend value 2
    execute if score @s Shield < @s HPMax run data modify storage mob: bar append value 3
    execute if score @s Shield >= @s HPMax run data modify storage mob: bar append value 4

# テキストディスプレイにシールドを表示
    execute on passengers run data modify entity @s[tag=shield] text set value {font:"mob:display/attribute/shield",plain:true,nbt:"bar[]",storage:"mob:",separator:"5"}

# ストレージ削除
    data remove storage mob: bar
