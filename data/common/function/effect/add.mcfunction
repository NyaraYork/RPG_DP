#> common:effect/add
# エフェクトを追加するコマンド

# 同じ名前のエフェクトを取り出してスタック数を減らす
    $data modify storage common: RemoveStack prepend from storage common: effects[{owner:$(owner),name:$(name)}]
    $data remove storage common: effects[{owner:$(owner),name:$(name)}]
    function common:effect/stack/remove

# エフェクトの付与対象を取得する
    execute if data storage common: EffectsBuf[-1].target.predicate{type:"any"} unless data storage common: EffectsBuf[-1].target.updated run function common:effect/target/update with storage common: EffectsBuf[-1]

# エフェクトを追加
    data modify storage common: effects prepend from storage common: EffectsBuf[-1]

# 追加したエフェクトを削除
    data remove storage common: EffectsBuf[-1]

# 追加するエフェクトがなくなるまで再帰
    function common:effect/add with storage common: EffectsBuf[-1]
