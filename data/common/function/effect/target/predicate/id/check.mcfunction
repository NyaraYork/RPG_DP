#> common:effect/target/predicate/id/check
# エフェクトの付与対象にIDが設定されているか判定するコマンド

# IDを取得
    execute store result storage common: ID.value int 1 run scoreboard players get @s EntityID

# エフェクトの付与対象にIDが設定されていれば含まれているか確認
    execute if data storage common: EffectsBuf[-1].target.predicate.ID run return run function common:effect/target/predicate/id/search with storage common: ID

# エフェクトの付与対象にIDが設定されていなければ範囲で対象を絞る
    function common:effect/target/predicate/range/check
