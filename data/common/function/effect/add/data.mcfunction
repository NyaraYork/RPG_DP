#> common:effect/add/data
# エフェクトのデータを追加するコマンド

# 付与するエフェクトと同じ名前のエフェクトを取り出す
    $data modify storage common: EffectsBuf prepend from storage common: EntityData.effects[{name:$(name)}]
    $data remove storage common: EntityData.effects[{name:$(name)}]

# 取り出したエフェクトのstackを1減らす
    function common:effect/remove/stack

# エフェクトのデータを追加
    data modify storage common: EntityData.effects prepend from storage common: ApplyEffectsBuf[-1]

# 最後尾のデータを削除
    data remove storage common: ApplyEffectsBuf[-1]

# データがなくなるまで再帰
    function common:effect/add/data with storage common: ApplyEffectsBuf[-1]
