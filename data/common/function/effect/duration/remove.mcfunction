#> common:effect/duration/remove
# エフェクトの持続時間を減らすコマンド

# エフェクトのdurationを1減らす
    execute store result score #Duration Temp run data get storage common: EffectsBuf[-1].duration
    execute store result storage common: EffectsBuf[-1].duration int 1 run scoreboard players remove #Duration Temp 1

# エフェクトの効果を適用
    data modify storage common: trigger set from storage common: EffectsBuf[-1].trigger
    execute if data storage common: {trigger:"tick"} run function common:effect/trigger/tick

# 更新後の付与対象のIDを更新前の付与対象のIDに移動
    data modify storage common: EffectsBuf[-1].target.ID set from storage common: EffectsBuf[-1].target.NextID
    data remove storage common: EffectsBuf[-1].target.NextID[]

# 変更済みのデータを元の場所に戻す
    data modify storage common: effects prepend from storage common: EffectsBuf[-1]

# 最後尾のデータを削除
    data remove storage common: EffectsBuf[-1]

# データがなくなるまで再帰
    execute if data storage common: EffectsBuf[] run function common:effect/duration/remove
