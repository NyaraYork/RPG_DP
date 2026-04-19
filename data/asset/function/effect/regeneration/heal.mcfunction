#> asset:effect/regeneration/heal
# HPを回復するエフェクトを付与するコマンド

# 回復量を取得しHPを回復するエフェクトを付与
    data modify storage common: ApplyEffects set value [{type:"healing",name:"healing",duration:1,trigger:"applied",target:{predicate:{type:"owner"}}}]
    data modify storage common: ApplyEffects[].amount set from storage common: EffectsBuf[-1].amount
    function common:effect/owner/add
