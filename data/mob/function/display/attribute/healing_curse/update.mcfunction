#> mob:display/attribute/healing_curse/update
# モブの回復の呪いの残量表示を更新するコマンド

# HPに対する回復の呪いの割合を計算
    scoreboard players operation #Ratio Temp = @s HPMax
    scoreboard players operation #Ratio Temp -= @s HealingCurse
    scoreboard players operation #Ratio Temp *= @s HPBarLength
    scoreboard players operation #Ratio Temp /= @s HPMax

# モブの回復の呪いの残量表示に必要なデータを設定
    function mob:display/attribute/set

# 回復の呪いの残量表示に枠を入れる
    execute if score @s HealingCurse matches 1.. run data modify storage mob: bar append value 2
    execute if score @s HealingCurse < @s HPMax run data modify storage mob: bar prepend value 1
    execute if score @s HealingCurse >= @s HPMax run data modify storage mob: bar prepend value 2

# テキストディスプレイに回復の呪いを表示
    execute on passengers run data modify entity @s[tag=HealingCurse] text set value {font:"mob:display/attribute/healing_curse",plain:true,nbt:"bar[]",storage:"mob:",separator:"3"}

# ストレージ削除
    data remove storage mob: bar
