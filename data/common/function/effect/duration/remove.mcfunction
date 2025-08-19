#> common:effect/duration/remove
# エフェクトの持続時間を減らすコマンド

# エフェクトのdurationを1減らす
    execute store result score #Duration Temp run data get storage common: EffectsBuf[-1].duration
    execute store result storage common: EffectsBuf[-1].duration int 1 run scoreboard players remove #Duration Temp 1

# エフェクトの付与対象を更新する
    execute if data storage common: EffectsBuf[-1].target.predicate{type:"any"} unless data storage common: EffectsBuf[-1].target.updated run function common:effect/target/update with storage common: EffectsBuf[-1]

# 変更済みのデータを元の場所に戻す
    data modify storage common: effects prepend from storage common: EffectsBuf[-1]

# 最後尾のデータを削除
    data remove storage common: EffectsBuf[-1]

# データがなくなるまで再帰
    execute if data storage common: EffectsBuf[] run function common:effect/duration/remove
