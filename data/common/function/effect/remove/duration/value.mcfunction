#> common:effect/remove/duration/value
# エフェクトのdurationの値を1減らすコマンド

# エフェクトのdurationの値を1減らす
    execute store result score #Duration Temp run data get storage common: data[-1].effects[-1].duration
    execute store result storage common: data[-1].effects[-1].duration int 1 run scoreboard players remove #Duration Temp 1
    data modify storage common: DataBuf[-1].effects prepend from storage common: data[-1].effects[-1]

# エフェクトのデータを削除
    data remove storage common: data[-1].effects[-1]

# エフェクトのデータがなくなるまで再帰
    execute if data storage common: data[-1].effects[] run function common:effect/remove/duration/value
