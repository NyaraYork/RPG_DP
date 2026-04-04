#> common:effect/give
# エフェクトを付与するコマンド

# 付与するエフェクトに実行者のIDを格納
    function common:effect/owner/add

# 付与するエフェクトをEffectsBufに格納
    function common:effect/buffer/add with storage common: ApplyEffectsBuf[-1]

# エフェクトの付与対象のステータスを更新
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]
