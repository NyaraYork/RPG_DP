#> common:effect/get/id
# エフェクトを反映するエンティティのIDを取得するコマンド

# エンティティIDを取得
    execute store result storage common: EffectData.ID int 1 run scoreboard players get @s EntityID

# エフェクトを取得
    function common:effect/get/data with storage common: EffectData
