#> asset:effect/attribute/id/store
# ステータス変更エフェクトを適用するエンティティのIDを格納するコマンド

# エンティティのIDを格納
    $data modify storage common: EffectsBuf[{name:$(name)}].target.NextID prepend from storage common: ID
