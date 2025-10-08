#> common:effect/target/predicate/type/attacker/search
# エフェクトの適用先を攻撃したエンティティに絞り込むか判定するコマンド

# エフェクトの適用先が攻撃したエンティティだった場合
    execute if data storage common: EffectsBuf[-1].target.predicate{type:"owner"} run return run function common:effect/target/predicate/id/check

# エフェクトの適用先が攻撃されたエンティティだった場合
    execute if data storage common: EffectsBuf[-1].target.predicate{type:"victim"} as @e[tag=victim] run function common:effect/target/predicate/id/check
