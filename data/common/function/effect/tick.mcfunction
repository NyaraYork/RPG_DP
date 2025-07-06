#> common:effect/tick
# エフェクトに毎ティック実行するコマンド

# durationが0のエフェクトのデータを削除
    execute if data storage common: data[-1].effects[{duration:0}] run function common:effect/remove/duration/data

# エフェクトのdurationの値を1減らす
    data modify storage common: DataBuf append from storage common: data[-1]
    data remove storage common: DataBuf[-1].effects[]
    function common:effect/remove/duration/value

# エンティティのデータを削除
    data remove storage common: data[-1]

# エンティティのデータがなくなるまで再帰
    execute if data storage common: data[] run return run function common:effect/tick

# durationの値を1減らした後のエフェクトのデータを元の場所に戻す
    data modify storage common: data set from storage common: DataBuf

# リセット
    data remove storage common: DataBuf
    scoreboard players reset #TargetID Temp
    scoreboard players reset #Duration Temp
