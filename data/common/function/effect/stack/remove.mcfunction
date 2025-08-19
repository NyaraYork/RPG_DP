#> common:effect/stack/remove
# エフェクトのスタック数を1減らすコマンド

# エフェクトのスタックを1減らす
    execute store result score #Stack Temp run data get storage common: RemoveStack[-1].stack
    execute store result storage common: RemoveStack[-1].stack int 1 run scoreboard players remove #Stack Temp 1

# エフェクトがスタックの上限に達していない場合元のデータに戻す
    execute unless score #Stack Temp matches 0 run data modify storage common: effects prepend from storage common: RemoveStack[-1]

# スタックを減らしたエフェクトの最後尾を削除
    data remove storage common: RemoveStack[-1]

# スタックを減らすエフェクトがなくなるまで再帰
    execute if data storage common: RemoveStack[] run function common:effect/stack/remove
