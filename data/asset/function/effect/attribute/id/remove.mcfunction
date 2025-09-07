#> asset:effect/attribute/id/remove
# 自身のIDを更新前の適用先に追加したり削除したりするコマンド

# 自身のIDが更新前の適用先のIDにあればそれを削除
    $execute if data storage common: EffectsBuf[-1].target.ID[{value:$(value)}] run return run data remove storage common: EffectsBuf[-1].target.ID[{value:$(value)}]

# 自身のIDが更新前の適用先のIDになければ追加
    data modify storage common: EffectsBuf[-1].target.ID prepend from storage common: ID
