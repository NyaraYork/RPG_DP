#> common:attribute/modifier/operation/add
# ステータス補正値をステータスに加算するコマンド

# 取得したステータス補正値をステータスに加算
    execute store result score #AttributeModifierAmount Temp run data get storage common: AttributeModifiersBuf[-1].amount
    $scoreboard players operation @s $(type) += #AttributeModifierAmount Temp

# 取得したステータス補正値は削除
    data remove storage common: AttributeModifiersBuf[-1]

# ステータス補正値がなくなるまで再帰
    function common:attribute/modifier/operation/add with storage common: AttributeModifiersBuf[-1]
