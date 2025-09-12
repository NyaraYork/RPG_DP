#> player:effect/inventory/get
# プレイヤーのインベントリにあるアイテムのエフェクトを取得するコマンド

# プレイヤーのメインハンドに持っているアイテムのエフェクトを取得
    data modify storage player: SelectedItem set from entity @s SelectedItem
    data modify storage common: EffectsBuf append from storage player: SelectedItem.components."minecraft:custom_data".effects[{slot:"mainhand"}]
    data modify storage common: EffectsBuf append from storage player: SelectedItem.components."minecraft:custom_data".effects[{slot:"hand"}]
    data modify storage common: EffectsBuf append from storage player: SelectedItem.components."minecraft:custom_data".effects[{slot:"any"}]

# プレイヤーのインベントリにあるアイテムを取得
    data modify storage common: Inventory set from entity @s Inventory

# 装備品のエフェクトの所有者IDを取得
    function common:effect/equipment/id/get

# ストレージ削除
    data remove storage player: SelectedItem
