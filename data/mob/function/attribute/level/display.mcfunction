#> mob:attribute/level/display
# モブのレベルを表示するコマンド

# レベルを表示するテキストをモブの頭上に乗せる
    ride @s mount @n[tag=vehicle]

# レベルの表示に必要なデータを設定
    data merge entity @s {background:0,billboard:"center",brightness:{block:15,sky:0},text:[{text:"Lv."},{score:{name:"#MobLevel",objective:"Temp"}}],Tags:["LevelDisplay"]}

# プレイヤーの平均レベルとモブのレベルの差をもとにレベルの色を変えて表示
    scoreboard players operation #MobLevel Temp -= #PlayerLevelAverage Temp
    execute if score #MobLevel Temp matches 10.. run data modify entity @s text.color set value "red"
    execute if score #MobLevel Temp matches ..-10 run data modify entity @s text.color set value "green"
