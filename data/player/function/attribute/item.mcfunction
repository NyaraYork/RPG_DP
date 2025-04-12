#> player:attribute/item
# プレイヤーのインベントリにあるアイテムのステータスを取得するコマンド

# プレイヤーのメインハンドに持っているアイテムのステータスを取得
    data modify storage player: SelectedItem set from entity @s SelectedItem
    data modify storage common: AttributeModifiers prepend from storage player: SelectedItem.components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data modify storage common: AttributeModifiers prepend from storage player: SelectedItem.components."minecraft:custom_data".AttributeModifiers[{slot:"hand"}]
    data modify storage common: AttributeModifiers prepend from storage player: SelectedItem.components."minecraft:custom_data".AttributeModifiers[{slot:"mainhand"}]

# プレイヤーのインベントリにあるアイテムのステータスを取得
    data modify storage player: Inventory set from entity @s Inventory
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"any"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"armor"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"head"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"chest"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"legs"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"feet"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"hand"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"mainhand"}]
    data remove storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[{slot:"offhand"}]
    data modify storage common: AttributeModifiers prepend from storage player: Inventory[].components."minecraft:custom_data".AttributeModifiers[]

# ステータスを計算
    function common:attribute/calc

# ストレージ削除
    data remove storage player: SelectedItem
    data remove storage player: Inventory
