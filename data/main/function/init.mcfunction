#> main:init
# ロード時一度だけ実行されるコマンド

# スコアボード作成
    scoreboard objectives add EntityID dummy

    scoreboard objectives add Level dummy
    scoreboard objectives add XP dummy
    scoreboard objectives add XPRequired dummy

    scoreboard objectives add HP dummy
    scoreboard objectives add HPMax dummy
    scoreboard objectives add EP dummy
    scoreboard objectives add EPMax dummy
    scoreboard objectives add Attack dummy
    scoreboard objectives add Defence dummy
    scoreboard objectives add Speed dummy
    scoreboard objectives add CritRate dummy
    scoreboard objectives add CritDamage dummy

    scoreboard objectives add Temp dummy
    scoreboard objectives add Const dummy

# 定数を定義
    function main:define_const
