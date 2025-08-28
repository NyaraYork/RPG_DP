#> common:attack/attacker/effect/get
# 付与対象が攻撃されたエンティティのエフェクトを取得するコマンド

# 付与対象が攻撃されたエンティティのエフェクトを取得
    $data modify storage common: EffectsBuf prepend from storage common: effects[{owner:$(value),target:{predicate:{type:"victim"}}}]
    $data remove storage common: effects[{owner:$(value),target:{predicate:{type:"victim"}}}]

# エフェクトの付与対象を更新
    function common:attack/attacker/effect/update with storage common: EffectsBuf[-1]

# 攻撃されたエンティティのIDを取得
    execute as @e[tag=victim] run function common:attack/victim/id/get

# エフェクトの付与対象を削除
    $data remove storage common: effects[{owner:$(value),target:{predicate:{type:"victim"}}}].target.ID

# ストレージ削除
    data remove storage common: EffectsBuf
