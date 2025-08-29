#> common:attack/victim/effect/get
# 攻撃したエンティティに付与するエフェクトを取得するコマンド

# 攻撃したエンティティに付与するエフェクトを取得
    $data modify storage common: EffectsBuf prepend from storage common: effects[{owner:$(value),target:{predicate:{type:"attacker"}}}]
    $data remove storage common: effects[{owner:$(value),target:{predicate:{type:"attacker"}}}]

# エフェクトの付与対象を更新
    function common:attack/victim/effect/update with storage common: EffectsBuf[-1]

# 


# エフェクトの付与対象を削除
    $data remove storage common: effects[{owner:$(value),target:{predicate:{type:"attacker"}}}].target.ID
