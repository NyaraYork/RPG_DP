#> common:effect/equipment/get
# 装備品のエフェクトを取得するコマンド

# 装備品でslotタグが指定されているエフェクトを取得
    data modify storage common: equipment merge from entity @s equipment
    data modify storage common: ApplyEffects append from storage common: equipment.mainhand.components."minecraft:custom_data".effects[{slot:"mainhand"}]
    data modify storage common: ApplyEffects append from storage common: equipment.mainhand.components."minecraft:custom_data".effects[{slot:"hand"}]
    data modify storage common: ApplyEffects append from storage common: equipment.mainhand.components."minecraft:custom_data".effects[{slot:"any"}]
    data modify storage common: ApplyEffects append from storage common: equipment.offhand.components."minecraft:custom_data".effects[{slot:"offhand"}]
    data modify storage common: ApplyEffects append from storage common: equipment.offhand.components."minecraft:custom_data".effects[{slot:"hand"}]
    data modify storage common: ApplyEffects append from storage common: equipment.offhand.components."minecraft:custom_data".effects[{slot:"any"}]
    data modify storage common: ApplyEffects append from storage common: equipment.chest.components."minecraft:custom_data".effects[{slot:"chest"}]
    data modify storage common: ApplyEffects append from storage common: equipment.chest.components."minecraft:custom_data".effects[{slot:"armor"}]
    data modify storage common: ApplyEffects append from storage common: equipment.chest.components."minecraft:custom_data".effects[{slot:"any"}]
    data modify storage common: ApplyEffects append from storage common: equipment.legs.components."minecraft:custom_data".effects[{slot:"legs"}]
    data modify storage common: ApplyEffects append from storage common: equipment.legs.components."minecraft:custom_data".effects[{slot:"armor"}]
    data modify storage common: ApplyEffects append from storage common: equipment.legs.components."minecraft:custom_data".effects[{slot:"any"}]
    data modify storage common: ApplyEffects append from storage common: equipment.head.components."minecraft:custom_data".effects[{slot:"head"}]
    data modify storage common: ApplyEffects append from storage common: equipment.head.components."minecraft:custom_data".effects[{slot:"armor"}]
    data modify storage common: ApplyEffects append from storage common: equipment.head.components."minecraft:custom_data".effects[{slot:"any"}]
    data modify storage common: ApplyEffects append from storage common: equipment.feet.components."minecraft:custom_data".effects[{slot:"feet"}]
    data modify storage common: ApplyEffects append from storage common: equipment.feet.components."minecraft:custom_data".effects[{slot:"armor"}]
    data modify storage common: ApplyEffects append from storage common: equipment.feet.components."minecraft:custom_data".effects[{slot:"any"}]

# インベントリに装備品の情報を追加
    data modify storage common: Inventory prepend from storage common: equipment.feet
    data modify storage common: Inventory prepend from storage common: equipment.head
    data modify storage common: Inventory prepend from storage common: equipment.legs
    data modify storage common: Inventory prepend from storage common: equipment.chest
    data modify storage common: Inventory prepend from storage common: equipment.offhand
    data modify storage common: Inventory prepend from storage common: equipment.mainhand

# slotタグに何も指定されていないエフェクトを取得
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"mainhand"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"offhand"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"hand"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"chest"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"legs"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"head"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"feet"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"armor"}]
    data remove storage common: Inventory[].components."minecraft:custom_data".effects[{slot:"any"}]
    data modify storage common: ApplyEffects append from storage common: Inventory[].components."minecraft:custom_data".effects[]

# 取得したエフェクトを付与
    $data modify storage common: UpdatedEntities prepend from storage common: effects[{owner:$(value),applied_by_item:true}].target.ID[]
    $data remove storage common: effects[{owner:$(value),applied_by_item:true}]
    data modify storage common: ApplyEffects[].applied_by_item set value true
    function common:effect/give

# ストレージ削除
    data remove storage common: equipment
    data remove storage common: Inventory
