#> common:attribute/calc
# エンティティのステータスを計算するコマンド

# 装備品のステータスを取得
    data modify storage common: equipment set from entity @s equipment
    data modify storage common: AttributeModifiers prepend from storage common: equipment.head.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.head.components."minecraft:custom_data".AttributeModifiers[{slot:"armor"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.head.components."minecraft:custom_data".AttributeModifiers[{slot:"head"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.chest.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.chest.components."minecraft:custom_data".AttributeModifiers[{slot:"armor"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.chest.components."minecraft:custom_data".AttributeModifiers[{slot:"chest"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.legs.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.legs.components."minecraft:custom_data".AttributeModifiers[{slot:"armor"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.legs.components."minecraft:custom_data".AttributeModifiers[{slot:"legs"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.feet.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.feet.components."minecraft:custom_data".AttributeModifiers[{slot:"armor"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.feet.components."minecraft:custom_data".AttributeModifiers[{slot:"feet"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.mainhand.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.mainhand.components."minecraft:custom_data".AttributeModifiers[{slot:"hand"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.mainhand.components."minecraft:custom_data".AttributeModifiers[{slot:"mainhand"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.offhand.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.offhand.components."minecraft:custom_data".AttributeModifiers[{slot:"hand"}]
    data modify storage common: AttributeModifiers prepend from storage common: equipment.offhand.components."minecraft:custom_data".AttributeModifiers[{slot:"offhand"}]

# 基礎ステータスを計算
    scoreboard players operation @s HPMax *= @s Level
    scoreboard players operation @s ATK *= @s Level
    scoreboard players operation @s DEF *= @s Level

# ステータス補正値を順に適用する
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"add_base"}]
    function common:attribute/modifier/operation/add with storage common: AttributeModifiersBuf[-1]
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"multiplied_base"}]
    function common:attribute/modifier/operation/multiplied_base with storage common: AttributeModifiersBuf[-1]
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"add_value"}]
    function common:attribute/modifier/operation/add with storage common: AttributeModifiersBuf[-1]
    data modify storage common: AttributeModifiersBuf prepend from storage common: AttributeModifiers[{operation:"multiplied_value"}]
    function common:attribute/modifier/operation/multiplied_value with storage common: AttributeModifiersBuf[-1]

# リセット
    data remove storage common: equipment
    data remove storage common: AttributeModifiers
    data remove storage common: AttributeModifiersBuf
    scoreboard players reset #AttributeModifierAmount Temp
