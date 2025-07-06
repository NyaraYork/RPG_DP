#> common:effect/get/entitydata
# エフェクトを削除したエンティティのステータスを取得するコマンド

# IDとエフェクトを取得
    execute store result score #TargetID Temp run data get storage common: data[-1].ID
    data modify storage common: AttributeModifiers set from storage common: data[-1].effects

# ステータス更新
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #TargetID Temp run function common:effect/update_attribute
