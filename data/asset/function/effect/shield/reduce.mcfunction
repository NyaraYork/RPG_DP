#> asset:effect/shield/reduce
# シールドの耐久値を減らすコマンド

# シールド耐久値を取得
    execute store result score #ShieldDurability Temp run data get storage asset: shield[-1].amount

# シールドが更新されるエンティティをステータス更新リストに格納
    data modify storage common: UpdatedEntities prepend from storage asset: shield[-1].target.ID[]

# 受けたダメージがシールド耐久値以上の場合シールドを破壊する
    execute if score #ShieldDurability Temp <= #Damage Temp run return run function asset:effect/shield/break

# シールド耐久値未満の場合シールドの耐久値を減らして元の場所に戻す
    scoreboard players operation #ShieldDurability Temp -= #Damage Temp
    execute store result storage asset: shield[-1].amount int 1 run scoreboard players get #ShieldDurability Temp
    data modify storage common: effects append from storage asset: shield[]

# 受けるダメージを0にする
    scoreboard players set #Damage Temp 0
