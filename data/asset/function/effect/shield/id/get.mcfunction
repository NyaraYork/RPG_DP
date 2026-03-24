#> asset:effect/shield/id/get
# ダメージを吸収するエンティティのIDを取得するコマンド

# IDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# ダメージを吸収
    function asset:effect/shield/absorb with storage common: ID

# ストレージ削除
    data remove storage common: ID
