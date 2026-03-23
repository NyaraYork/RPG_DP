#> asset:effect/healing_curse/remove
# 回復の呪いを取り除くコマンド

# 呪いの分だけ回復量を減らす
    scoreboard players operation #HealingAmount Temp -= #HealingCurse Temp

# 呪いを取り除く
    data remove storage asset: HealingCurse[-1]

# 呪いがなくなるまで再帰
    execute if data storage asset: HealingCurse[] run function asset:effect/healing_curse/reduce
