#> common:damage/attacker/element/id/get
# 攻撃したエンティティのIDを取得するコマンド

# IDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# 攻撃したエンティティに付与されている属性を取得
    function common:damage/attacker/element/get with storage common: ID

# 取得した属性をもとにダメージ計算
    function common:damage/attacker/calc with storage common: damage
