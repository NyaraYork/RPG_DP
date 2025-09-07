#> common:attribute/modifier/operation/multiply_value
# ステータス補正値を最終ステータスに乗算するコマンド

# 取得したステータス補正値を最終ステータスに乗算
    execute store result score #AttributeModifierAmount Temp run data get storage common: AttributeModifiersBuf[-1].amount 1000
    $scoreboard players operation @s $(attribute) *= #AttributeModifierAmount Temp
    $scoreboard players operation @s $(attribute) /= #1000 Const

# 取得したステータス補正値は削除
    data remove storage common: AttributeModifiersBuf[-1]

# ステータス補正値がなくなるまで再帰
    function common:attribute/modifier/operation/multiply_value with storage common: AttributeModifiersBuf[-1]
