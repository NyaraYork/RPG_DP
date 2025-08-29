#> common:attack/victim/id/get
# 攻撃されたエンティティのIDを取得するコマンド

# 攻撃されたエンティティのIDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# 攻撃したエンティティに付与するエフェクトを取得
    function common:attack/victim/effect/get with storage common: ID
