#> mob:display/level/init
# 敵モブのレベルを表示するコマンド
    #declare tag level

# レベルを表示するテキストを敵モブの頭上に乗せる
    ride @s mount @n[tag=vehicle]

# レベルの表示に必要なデータを設定
    data merge entity @s {Tags:["level"],background:0,billboard:"center",brightness:{block:15,sky:0}}

# プレイヤーの平均レベルと敵モブのレベルの差をもとにレベルの色を変えて表示
    scoreboard players operation #MobLevel Temp -= #PlayerLevelAverage Temp
    execute if score #MobLevel Temp matches 10.. run return run data modify entity @s text set value '[{"color":"red","text":"Lv."},{"score":{"name":"@n[tag=vehicle]","objective":"Level"}}]'
    execute if score #MobLevel Temp matches ..-10 run return run data modify entity @s text set value '[{"color":"green","text":"Lv."},{"score":{"name":"@n[tag=vehicle]","objective":"Level"}}]'
    data modify entity @s text set value '[{"text":"Lv."},{"score":{"name":"@n[tag=vehicle]","objective":"Level"}}]'
