#> player:attribute/hp/update
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

# 2ティック後に最大HPを反映
    data modify storage common: EffectsBuf set value [{type:"update_hp",stack:1,name:"UpdateHP",duration:2,trigger:"tick",target:{predicate:{type:"owner"}}}]
    function common:effect/owner/add

# リセット
    scoreboard players reset #HPRatio Temp
    data remove storage player: attribute
