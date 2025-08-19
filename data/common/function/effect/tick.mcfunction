#> common:effect/tick
# エフェクトに常時実行するコマンド

# durationが0になったエフェクトの付与対象リストを取得
    data modify storage common: UpdatedEntities prepend from storage common: effects[{duration:0}].target.ID[]
    data remove storage common: effects[{duration:0}]

# エフェクトの持続時間を1減らし付与対象を更新
    data modify storage common: EffectsBuf set from storage common: effects
    data remove storage common: effects
    function common:effect/duration/remove

# エンティティ更新リストに格納されているIDのエンティティのステータスを取得
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# 更新した記録を削除
    data remove storage common: effects[].target.updated

# リセット
    data remove storage common: EffectsBuf
    scoreboard players reset #Duration Temp
