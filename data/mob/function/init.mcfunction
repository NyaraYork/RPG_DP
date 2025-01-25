#> mob:init
# 敵モブの初期化をするコマンド
    #declare tag vehicle

# レベルを取得してステータスを計算
    scoreboard players operation @s Level = #MobLevel Temp
    function common:init/attribute

# 敵モブのレベルを表示
    tag @s add vehicle
    execute summon text_display run function mob:display/level/init

# 敵モブのHPバーを初期化
    execute summon text_display run function mob:display/hp/init
    tag @s remove vehicle
