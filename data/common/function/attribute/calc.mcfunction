#> common:attribute/calc
# エンティティのステータスを計算するコマンド

# 基礎ステータスを計算
    scoreboard players operation @s HPMax *= @s Level
    scoreboard players operation @s ATK *= @s Level
    scoreboard players operation @s DEF *= @s Level

# ステータス補正値を順に適用する
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"add_base"}]
    function common:attribute/modifier/operation/add with storage common: AttributeModifiersBuf[-1]
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"multiply_base"}]
    function common:attribute/modifier/operation/multiply_base with storage common: AttributeModifiersBuf[-1]
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"add_value"}]
    function common:attribute/modifier/operation/add with storage common: AttributeModifiersBuf[-1]
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"multiply_value"}]
    function common:attribute/modifier/operation/multiply_value with storage common: AttributeModifiersBuf[-1]

# リセット
    data remove storage common: AttributeModifiers
    data remove storage common: AttributeModifiersBuf
    scoreboard players reset #AttributeModifierAmount Temp
