#> common:effect/equipment/id/get
# 装備品のエフェクトの所有者IDを取得するコマンド

# IDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# 装備品のエフェクトを取得
    function common:effect/equipment/get with storage common: ID
