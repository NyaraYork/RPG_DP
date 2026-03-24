#> asset:effect/attribute/apply
# ステータス変更エフェクトを適用するコマンド

# 適用するエンティティのIDを格納
    data modify storage common: EffectsBuf[-1].target.NextID prepend from storage common: ID

# 更新前の適用先に自身のIDを追加または削除
    function asset:effect/attribute/id/remove with storage common: ID
