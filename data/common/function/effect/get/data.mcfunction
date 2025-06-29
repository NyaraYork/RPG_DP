#> common:effect/get/data
# エンティティに付与されているエフェクトを取得するコマンド

# エンティティに付与されているエフェクトを取得
    $data modify storage common: AttributeModifiers set from storage common: data[{ID:$(ID)}].effects

# ストレージ削除
    data remove storage common: EffectData
