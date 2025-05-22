#> common:effect/add/data
# エンティティへエフェクトを追加するコマンド

# 既にエンティティのデータがある場合エフェクトのデータのみ追加
    $execute if data storage common: data[{ID:$(ID)}] run return run data modify storage common: data[{ID:$(ID)}].effects prepend from storage common: EffectData.effects[]

# ない場合エンティティIDと同時に追加
    data modify storage common: data prepend from storage common: EffectData
