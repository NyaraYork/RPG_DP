#> common:effect/target/predicate/player/search
# エフェクトの付与対象をプレイヤーかそれ以外に絞り込むコマンド

# エフェクトの付与対象がプレイヤーの場合プレイヤーに付与対象を絞る
    execute if data storage common: EffectsBuf[-1].target.predicate{player:true} if entity @s[type=!player] run return fail

# エフェクトの付与対象がプレイヤー以外の場合プレイヤー以外に付与対象を絞る
    execute if data storage common: EffectsBuf[-1].target.predicate{player:false} if entity @s[type=player] run return fail

# 取得したIDを付与対象のリストに格納
    data modify storage common: TargetID prepend from storage common: ID
