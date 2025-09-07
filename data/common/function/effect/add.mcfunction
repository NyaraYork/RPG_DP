#> common:effect/add
# エフェクトを追加するコマンド

# 同じ名前のエフェクトを取り出してスタック数を減らす
    $data modify storage common: RemoveStack prepend from storage common: effects[{owner:$(owner),name:$(name)}]
    $data remove storage common: effects[{owner:$(owner),name:$(name)}]
    function common:effect/stack/remove

# エフェクトの効果を適用する
    data modify storage common: trigger set from storage common: EffectsBuf[-1].trigger
    execute if data storage common: {trigger:"applied"} unless data storage common: EffectsBuf[-1].target.NextID run function common:effect/trigger/applied

# 更新後の付与対象のIDを更新前の付与対象のIDに移動
    data modify storage common: EffectsBuf[-1].target.ID set from storage common: EffectsBuf[-1].target.NextID
    data remove storage common: EffectsBuf[-1].target.NextID

# エフェクトを追加
    data modify storage common: effects prepend from storage common: EffectsBuf[-1]

# 追加したエフェクトを削除
    data remove storage common: EffectsBuf[-1]

# 追加するエフェクトがなくなるまで再帰
    function common:effect/add with storage common: EffectsBuf[-1]
