#> player:tick
# プレイヤーに毎ティック実行するコマンド

# プレイヤーの最大HPをHPバーに反映
    scoreboard players remove @s[scores={SetMaxHPDelay=1..}] SetMaxHPDelay 1
    execute if score @s SetMaxHPDelay matches 0 run function player:attribute/hp/max

# プレイヤーが初めてワールドに入った時実行
    execute unless score @s EntityID matches -2147483648..2147483647 run function player:init
