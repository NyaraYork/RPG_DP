#> main:init
# ロード時一度だけ実行されるコマンド

# 常時読み込まれるチャンクを設定
    execute in common:debug run forceload add -1 -1 0 0

# ゲームルールの設定
    gamerule doMobSpawning false

# スコアボード作成
    scoreboard objectives add EntityID dummy

    scoreboard objectives add Level dummy
    scoreboard objectives add XP dummy
    scoreboard objectives add XPRequired dummy

    scoreboard objectives add HP dummy
    scoreboard objectives add HPMax dummy
    scoreboard objectives add Attack dummy
    scoreboard objectives add Defence dummy

    scoreboard objectives add SetMaxHPDelay dummy

    scoreboard objectives add Temp dummy
    scoreboard objectives add Const dummy

# 定数を定義
    function main:define_const
