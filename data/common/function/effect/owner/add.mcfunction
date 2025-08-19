#> common:effect/owner/add
# エフェクトに主のIDを付与するコマンド

# エフェクトに主のIDを付与
    execute store result storage common: EffectsBuf[].owner int 1 run scoreboard players get @s EntityID

# エフェクトを付与
    function common:effect/add with storage common: EffectsBuf[-1]

# エフェクトの付与対象のステータスを更新
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# リセット
    data remove storage common: EffectsBuf
    data remove storage common: RemoveStack
    scoreboard players reset #Stack Temp
