#> asset:skeleton/init
# スケルトンの初期化をするコマンド

# スケルトン固有のスコアを設定
    scoreboard players set @s HPMax 29
    scoreboard players set @s ATK 23
    scoreboard players set @s DEF 23

# 敵モブ共通の初期化処理
    function mob:init
