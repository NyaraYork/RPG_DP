#> common:effect/target/attribute/get
# エフェクトの付与対象のステータスを取得するコマンド

# 自身が付与対象となっているエフェクトを取得してステータスを更新
    $data modify storage common: AttributeModifiers prepend from storage common: effects[{target:{ID:[{value:$(value)}]}}]
    $execute as @e[scores={EntityID=$(value)}] run function common:effect/target/attribute/update

# 同じIDを削除
    $data remove storage common: UpdatedEntities[{value:$(value)}]

# エンティティ更新リストが空になるまで再帰
    execute if data storage common: UpdatedEntities[] run return run function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# ストレージ削除
    data remove storage common: UpdatedEntities
