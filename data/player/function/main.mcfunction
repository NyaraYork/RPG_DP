#> player:main
# プレイヤーに毎ティック実行するコマンド

# プレイヤーが初めてワールドに入った時IDとステータスを付与
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init
