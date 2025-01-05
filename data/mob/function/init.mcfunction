#> mob:init
# 敵モブの初期化をするコマンド

# レベルを取得してステータスを計算
    scoreboard players operation @s Level = #MobLevel Temp
    function common:attribute
