#> common:effect/add/id
# エフェクトを付与するエンティティのIDを追加するコマンド

# エンティティIDを追加
    execute store result storage common: EntityData.ID int 1 run scoreboard players get @s EntityID

# エフェクトを追加
    function common:effect/add/entitydata with storage common: EntityData

# 追加後のエフェクトを取得
    function common:effect/get/data with storage common: EntityData
