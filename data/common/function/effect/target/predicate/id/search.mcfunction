#> common:effect/target/predicate/id/search
# エフェクトの付与対象に取得したIDが含まれているか確認するコマンド

# 取得したIDがエフェクトの付与対象のエンティティIDに含まれているか確認
    $execute if data storage common: EffectsBuf[-1].target.predicate{ID:[$(value)]} run function common:effect/target/predicate/range/check
