#> main:init
# ロード時一度だけ実行されるコマンド

# スコアボード作成
    scoreboard objectives add EntityID dummy

    scoreboard objectives add Temp dummy
    scoreboard objectives add Const dummy

# 定数を定義
    scoreboard players set #2 Const 2
    scoreboard players set #-2147483648 Const -2147483648
