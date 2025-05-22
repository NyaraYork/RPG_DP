#> common:effect/add/id
# エフェクトを付与するエンティティのIDを追加するコマンド

# エンティティIDを追加
    execute store result storage common: EffectData.ID int 1 run scoreboard players get @s EntityID

# エフェクトのデータを追加
    function common:effect/add/data with storage common: EffectData

# 追加後のエフェクトを取得
    function common:effect/get/data with storage common: EffectData

# ストレージ削除
    data remove storage common: EffectData
