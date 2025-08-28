#> common:attack/victim/effect/update
# 付与対象が攻撃したエンティティのエフェクトを更新するコマンド

# 付与対象を更新
    execute as @n[tag=attacker] run function common:effect/target/predicate/id/check
    $data modify storage common: EffectsBuf[{name:$(name)}].target.ID set from storage common: TargetID
    data remove storage common: TargetID

# 付与対象を更新したエフェクトを元の場所に格納
    $data modify storage common: effects prepend from storage common: EffectsBuf[{name:$(name)}]

# 付与対象を更新したエフェクトを削除
    $data remove storage common: EffectsBuf[{name:$(name)}]

# 更新していないエフェクトがなくなるまで再帰
    function common:attack/victim/effect/update with storage common: EffectsBuf[-1]
