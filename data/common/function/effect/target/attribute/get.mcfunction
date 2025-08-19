#> common:effect/target/attribute/get
# エフェクトの付与対象のステータスを取得するコマンド

# 自身が付与対象となっているエフェクトとIDを取得してステータスを更新
    $data modify storage common: AttributeModifiers prepend from storage common: effects[{target:{ID:[{value:$(value)}]}}]
    execute store result score #TargetID Temp run data get storage common: UpdatedEntities[-1].value
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #TargetID Temp run function common:effect/target/attribute/update

# 同じIDを削除
    $data remove storage common: UpdatedEntities[{value:$(value)}]

# エンティティ更新リストが空になるまで再帰
    execute if data storage common: UpdatedEntities[] run return run function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# リセット
    data remove storage common: UpdatedEntities
    scoreboard players reset #TargetID Temp
