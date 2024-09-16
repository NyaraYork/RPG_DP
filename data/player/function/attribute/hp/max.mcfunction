#> player:attribute/hp/max
# プレイヤーの最大HPをHPバーに反映するコマンド

# 最大HPをHPバーに反映
    data modify storage player: attribute.ID set value generic.max_health
    execute store result storage player: attribute.value double 0.025 run scoreboard players get @s HPMax
    function player:attribute/set with storage player: attribute
    effect give @s instant_health 1 29 true

# 削除
    scoreboard players reset @s SetMaxHPDelay
    data remove storage player: attribute
