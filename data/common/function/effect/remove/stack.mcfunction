#> common:effect/remove/stack
# 同じ名前のエフェクトのstackを1減らすコマンド

# stackを1減らし0になっていないエフェクトを元の場所に戻す
    execute store result score #Stack Temp run data get storage common: EffectsBuf[-1].stack
    execute store result storage common: EffectsBuf[-1].stack int 1 run scoreboard players remove #Stack Temp 1
    execute unless score #Stack Temp matches 0 run data modify storage common: EntityData.effects prepend from storage common: EffectsBuf[-1]

# 最後尾のデータを削除
    data remove storage common: EffectsBuf[-1]

# データがなくなるまで再帰
    execute if data storage common: EffectsBuf[] run function common:effect/remove/stack
