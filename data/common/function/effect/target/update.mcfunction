#> common:effect/target/update
# エフェクトの付与対象を更新するコマンド

# エフェクトの付与対象のIDリストを取得
    data modify storage common: TargetID set value []
    execute store result score #OwnerID Temp run data get storage common: EffectsBuf[-1].owner
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #OwnerID Temp at @s as @e[scores={EntityID=-2147483648..2147483647}] run function common:effect/target/predicate/id/check

# 更新前の付与対象のIDリストを取得
    data modify storage common: TargetIDPrev set from storage common: EffectsBuf[-1].target.ID

# 付与対象のIDリストを更新
    $data modify storage common: EffectsBuf[{owner:$(owner),name:$(name)}].target.ID set from storage common: TargetID

# 更新前と更新後の付与対象リストの中で重複しないIDをエンティティ更新リストに格納
    function common:effect/target/remove
    data modify storage common: UpdatedEntities prepend from storage common: TargetID[]

# 更新した結果を記録
    $data modify storage common: EffectsBuf[{owner:$(owner),name:$(name)}].target.updated set value true

# リセット
    data remove storage common: ID
    data remove storage common: TargetID
    data remove storage common: TargetIDPrev
    scoreboard players reset #OwnerID Temp
