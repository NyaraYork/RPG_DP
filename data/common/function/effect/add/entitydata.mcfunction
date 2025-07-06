#> common:effect/add/entitydata
# エンティティデータを追加するコマンド

# 同じIDのエンティティデータがある場合別の場所に取り出す
    $data modify storage common: EntityData set from storage common: data[{ID:$(ID)}]
    $data remove storage common: data[{ID:$(ID)}]

# エフェクトのデータを追加
    function common:effect/add/data with storage common: ApplyEffectsBuf[-1]

# エフェクト追加後のエンティティデータを追加
    data modify storage common: data prepend from storage common: EntityData

# リセット
    data remove storage common: ApplyEffectsBuf
    data remove storage common: EffectsBuf
    scoreboard players reset #Stack Temp
