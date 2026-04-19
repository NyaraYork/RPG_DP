#> asset:effect/healing/apply
# HPを回復するコマンド

# 回復量を取得
    execute store result score #HealingAmount Temp run data get storage common: EffectsBuf[-1].amount

# 回復
    function asset:effect/healing_curse/id/get

# スコアリセット
    scoreboard players reset #HealingAmount Temp
