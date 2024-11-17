#> player:attribute/hp/max
# プレイヤーの最大HPをHPバーに反映するコマンド

# 最大HPをHPバーに反映
    data modify storage player: attribute.ID set value max_health
    execute store result storage player: attribute.value double 0.025 run scoreboard players get @s HPMax
    function player:attribute/set with storage player: attribute

# リセット
    scoreboard players reset @s SetMaxHPDelay
    data remove storage player: attribute
