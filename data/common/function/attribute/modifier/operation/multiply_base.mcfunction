#> common:attribute/modifier/operation/multiply_base
# ステータス補正値を基礎ステータスに乗算するコマンド

# 取得したステータス補正値を基礎ステータスへ乗算する数値に加算
    execute store result score #AttributeModifierAmount Temp run data get storage common: AttributeModifiersBuf[-1].amount 1000
    $scoreboard players operation #$(attribute)Multiplier Temp += #AttributeModifierAmount Temp

# 取得したステータス補正値は削除
    data remove storage common: AttributeModifiersBuf[-1]

# ステータス補正値がなくなるまで再帰
    function common:attribute/modifier/operation/multiply_base with storage common: AttributeModifiersBuf[-1]

# 加算したステータス補正値を基礎ステータスに乗算
    $scoreboard players add #$(attribute)Multiplier Temp 1000
    $scoreboard players operation @s $(attribute) *= #$(attribute)Multiplier Temp
    $scoreboard players operation @s $(attribute) /= #1000 Const
    $scoreboard players reset #$(attribute)Multiplier Temp
