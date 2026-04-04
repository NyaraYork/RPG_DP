#> common:effect/owner/add
# 付与するエフェクトに実行者のIDを格納するコマンド

# 付与するエフェクトに実行者のIDを格納
    execute store result storage common: ApplyEffects[].owner int 1 run scoreboard players get @s EntityID

# 付与するエフェクトのリストに格納
    data modify storage common: ApplyEffectsBuf prepend from storage common: ApplyEffects[]

# 付与するエフェクトを削除
    data remove storage common: ApplyEffects
