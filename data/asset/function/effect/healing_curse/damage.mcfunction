#> asset:effect/healing_curse/damage
# 回復の呪いでダメージを与えるコマンド

# 呪いで与えるダメージを取得して与える
    execute store result score #Damage Temp run data get storage common: EffectsBuf[-1].amount
    function common:damage/deal
