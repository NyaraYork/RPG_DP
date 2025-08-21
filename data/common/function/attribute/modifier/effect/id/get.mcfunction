#> common:attribute/modifier/effect/id/get
# エフェクトの取得に必要なIDを取得するコマンド

# IDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# エフェクトを取得
    function common:attribute/modifier/effect/get with storage common: ID

# ストレージ削除
    data remove storage common: ID
