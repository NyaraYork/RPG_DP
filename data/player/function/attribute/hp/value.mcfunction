#> player:attribute/hp/value
# プレイヤーの現在HPをHPバーに反映するコマンド

# 現在HPをHPバーに反映
    data modify storage player: attribute.ID set value max_health
    execute store result storage player: attribute.value double 0.025 run scoreboard players get @s HP
    function player:attribute/set with storage player: attribute
    effect give @s instant_health 1 28 true

# 2ティック後に最大HPを反映
    scoreboard players set @s SetMaxHPDelay 2

# ストレージ削除
    data remove storage player: attribute
