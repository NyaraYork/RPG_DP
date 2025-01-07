#> asset:spider/init
# クモの初期化をするコマンド

# クモ固有のスコアを設定
    scoreboard players set @s HPMax 29
    scoreboard players set @s Attack 23
    scoreboard players set @s Defence 23

# 敵モブ共通の初期化処理
    function mob:init
