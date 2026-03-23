#> asset:effect/healing_curse/reduce
# 回復の呪いを軽減するコマンド

# 呪いの数値を取得
    execute store result score #HealingCurse Temp run data get storage asset: HealingCurse[-1].amount

# 呪いを軽減するエンティティをステータス更新リストに格納
    data modify storage common: UpdatedEntities prepend from storage asset: HealingCurse[-1].target.ID[]

# 呪い以上の回復を受けた場合呪いを取り除く
    execute if score #HealingCurse Temp <= #HealingAmount Temp run return run function asset:effect/healing_curse/remove

# 呪い未満の回復を受けた場合呪いを軽減し元の場所に戻す
    scoreboard players operation #HealingCurse Temp -= #HealingAmount Temp
    execute store result storage asset: HealingCurse[-1].amount int 1 run scoreboard players get #HealingCurse Temp
    data modify storage common: effects append from storage asset: HealingCurse[]

# 回復量を0にする
    scoreboard players set #HealingAmount Temp 0
