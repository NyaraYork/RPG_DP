#> common:effect/buffer/add
# 付与するエフェクトをEffectsBufに格納するコマンド

# 同じオーナーのエフェクトをEffectsBufへ移動
    $data modify storage common: EffectsBuf prepend from storage common: ApplyEffectsBuf[{owner:$(owner)}]
    $data remove storage common: ApplyEffectsBuf[{owner:$(owner)}]

# オーナーのIDを実行者にしてエフェクト付与
    $execute as @e[scores={EntityID=$(owner)}] at @s run function common:effect/add with storage common: EffectsBuf[-1]

# ApplyEffectsBufがなくなるまで再帰
    execute if data storage common: ApplyEffectsBuf[] run return run function common:effect/buffer/add with storage common: ApplyEffectsBuf[-1]

# リセット
    data remove storage common: ApplyEffectsBuf
    data remove storage common: EffectsBuf
    data remove storage common: RemoveStack
    data remove storage common: trigger
    scoreboard players reset #Stack Temp
