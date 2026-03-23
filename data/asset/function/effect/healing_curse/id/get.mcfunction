#> asset:effect/healing_curse/id/get
# 回復の呪いを解呪するエンティティのIDを取得するコマンド

# IDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# 呪いを解呪
    function asset:effect/healing_curse/dispel with storage common: ID

# ストレージ削除
    data remove storage common: ID
