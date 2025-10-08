#> common:effect/trigger/hurt
# トリガーがhurtのエフェクトの効果を適用するコマンド

# エフェクトの効果を適用
    function common:effect/target/predicate/type/victim/search

# 更新が必要なエンティティIDを格納
    data modify storage common: UpdatedEntities prepend from storage common: EffectsBuf[-1].target.ID[]
