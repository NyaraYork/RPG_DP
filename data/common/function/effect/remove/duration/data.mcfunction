#> common:effect/remove/duration/data
# durationが0のエフェクトのデータを削除するコマンド

# durationが0のエフェクトのデータを削除
    data remove storage common: data[-1].effects[{duration:0}]

# エンティティのステータスを更新
    execute store result score #TargetID Temp run data get storage common: data[-1].ID
    data modify storage common: AttributeModifiers set from storage common: data[-1].effects
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = #TargetID Temp run function common:effect/remove/is_player
