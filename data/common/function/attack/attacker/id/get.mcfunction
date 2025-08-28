#> common:attack/attacker/id/get
# 攻撃したエンティティのIDを取得するコマンド

# 攻撃したエンティティのIDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# 付与対象が攻撃されたエンティティのエフェクトを取得
    function common:attack/attacker/effect/get with storage common: ID

# ストレージ削除
    data remove storage common: ID
