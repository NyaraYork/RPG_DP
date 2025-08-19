#> common:effect/target/predicate/range/check
# エフェクトの付与対象に範囲が指定されているか判定するコマンド

# エフェクトの付与対象に範囲が指定されていれば範囲をもとに絞り込む
    execute if data storage common: EffectsBuf[-1].target.predicate.range run return run function common:effect/target/predicate/range/search with storage common: EffectsBuf[-1].target.predicate

# エフェクトの付与対象に範囲が指定されていなければプレイヤーかそれ以外に絞る
    function common:effect/target/predicate/player/search
