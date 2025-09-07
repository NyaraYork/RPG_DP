#> common:effect/trigger/tick
# トリガーがtickのエフェクトの効果を適用するコマンド

# エフェクトの効果を適用
    execute store result score #OwnerID Temp run data get storage common: EffectsBuf[-1].owner
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #OwnerID Temp at @s run function common:effect/target/predicate/type/search

# 更新が必要なエンティティIDを格納
    data modify storage common: UpdatedEntities prepend from storage common: EffectsBuf[-1].target.ID[]

# リセット
    data remove storage common: ID
    scoreboard players reset #OwnerID Temp
