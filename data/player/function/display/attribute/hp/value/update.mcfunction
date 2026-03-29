#> player:display/attribute/hp/value/update
# プレイヤーの現在HPをHPバーに反映するコマンド

# HP割合を計算
    scoreboard players set #HPRatio Temp 20
    scoreboard players operation #HPRatio Temp *= @s HP
    scoreboard players operation #HPRatio Temp /= @s HPMax

# 現在HPをHPバーに反映
    data modify storage player: attribute.ID set value max_health
    execute store result storage player: attribute.value int 1 run scoreboard players get #HPRatio Temp
    function player:attribute/set with storage player: attribute
    effect give @s instant_health 1 252 true

# 2ティック後にHPバーの長さを設定
    tag @s add RestoreHP
    scoreboard players set @s ExecutionDelay 2

# リセット
    scoreboard players reset #HPRatio Temp
    data remove storage player: attribute
