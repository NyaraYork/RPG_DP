#> player:effect/inventory/get
# プレイヤーのインベントリにあるアイテムのエフェクトを取得するコマンド

# プレイヤーのメインハンドに持っているアイテムのエフェクトを取得
    data modify storage common: equipment.mainhand set from entity @s SelectedItem

# プレイヤーのインベントリにあるアイテムを取得
    data modify storage common: Inventory set from entity @s Inventory

# 装備品のエフェクトの所有者IDを取得
    function common:effect/equipment/id/get
