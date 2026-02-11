#> common:effect/tick
# エフェクトに常時実行するコマンド

# エフェクトの持続時間を1減らし効果を適用
    data modify storage common: EffectsBuf set from storage common: effects
    data remove storage common: effects
    function common:effect/duration/remove

# durationが0になったエフェクトの付与対象リストを取得
    data modify storage common: UpdatedEntities prepend from storage common: effects[{duration:0}].target.ID[]
    data remove storage common: effects[{duration:0}]

# エンティティ更新リストに格納されているIDのエンティティのステータスを取得
    function common:effect/target/attribute/get with storage common: UpdatedEntities[-1]

# リセット
    data remove storage common: EffectsBuf
    data remove storage common: trigger
    scoreboard players reset #Duration Temp
