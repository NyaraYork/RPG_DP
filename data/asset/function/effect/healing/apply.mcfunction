#> asset:effect/healing/apply
# HPを回復するコマンド

# 回復量を取得
    execute store result score #HealingAmount Temp run data get storage common: EffectsBuf[-1].amount

# 計算した発動間隔で回復
    function common:effect/interval/calc
    execute if score #Duration Temp matches 0 run function asset:effect/healing_curse/id/get

# スコアリセット
    scoreboard players reset #HealingAmount Temp
