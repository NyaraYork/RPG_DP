#> asset:effect/healing_curse/dispel
# 回復の呪いを解呪するコマンド

# 呪いを軽減する
    $data modify storage asset: HealingCurse prepend from storage common: effects[{attribute:"HealingCurse",target:{ID:[{value:$(value)}]}}]
    $data remove storage common: effects[{attribute:"HealingCurse",target:{ID:[{value:$(value)}]}}]
    function asset:effect/healing_curse/reduce

# 回復
    function asset:effect/healing/heal

# リセット
    data remove storage asset: HealingCurse
    scoreboard players reset #HealingCurse Temp
