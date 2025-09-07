#> common:effect/target/predicate/type/search
# エフェクトの付与対象を所有者に絞り込むか判定するコマンド

# エフェクトの付与対象が所有者だった場合
    execute if data storage common: EffectsBuf[-1].target.predicate{type:"owner"} run return run function common:effect/target/predicate/id/check

# エフェクトの付与対象がエンティティ全員だった場合
    execute if data storage common: EffectsBuf[-1].target.predicate{type:"all"} as @e[scores={EntityID=-2147483648..2147483647}] run function common:effect/target/predicate/id/check
