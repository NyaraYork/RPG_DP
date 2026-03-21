#> asset:effect/shield/break
# シールドを破壊するコマンド

# 受けるダメージをシールド耐久値で減らす
    scoreboard players operation #Damage Temp -= #ShieldDurability Temp

# シールド削除
    data remove storage asset: shield[-1]

# シールドがなくなるまで再帰
    execute if data storage asset: shield[] run function asset:effect/shield/reduce
