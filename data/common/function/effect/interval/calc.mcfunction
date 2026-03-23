#> common:effect/interval/calc
# エフェクトを発動する間隔を計算するコマンド

# エフェクトを発動する間隔を取得しDurationの余りを計算
    execute store result score #Interval Temp run data get storage common: EffectsBuf[-1].interval
    scoreboard players operation #Duration Temp %= #Interval Temp

# スコアリセット
    scoreboard players reset #Interval Temp
