#> common:damage/attacker/element/get
# 攻撃したエンティティの属性を取得するコマンド

# デフォルトの属性を物理に設定
    data modify storage common: damage.element set value "Physical"

# 付与されている属性があれば取得
    $data modify storage common: damage.element set from storage common: effects[{owner:$(value),type:"set_element"}].element
