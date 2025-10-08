#> common:damage/victim/effect/apply
# 攻撃された時に発動するエフェクトを適用するコマンド

# エフェクトを適用
    execute unless data storage common: EffectsBuf[-1].target.NextID run function common:effect/trigger/hurt
    data modify storage common: EffectsBuf[-1].target.ID set from storage common: EffectsBuf[-1].target.NextID
    data remove storage common: EffectsBuf[-1].target.NextID

# 適用したエフェクトを元の場所に格納
    data modify storage common: effects prepend from storage common: EffectsBuf[-1]

# 適用したエフェクトを削除
    data remove storage common: EffectsBuf[-1]

# 適用していないエフェクトがなくなるまで再帰
    execute if data storage common: EffectsBuf[] run function common:damage/victim/effect/apply
