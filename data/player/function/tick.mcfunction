#> player:tick
# プレイヤーに毎ティック実行するコマンド

# プレイヤーが初めてワールドに入った時実行
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init
