#> common:effect/.add
# エフェクトを追加するコマンド(テスト用)

# 付与するエフェクトを取得
    data modify storage common: EffectsBuf set from storage common: ApplyEffects

# 付与するエフェクトに主のIDを付与
    function common:effect/owner/add
