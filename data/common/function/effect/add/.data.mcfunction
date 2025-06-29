#> common:effect/add/.data
# 付与するエフェクトのデータを追加するコマンド(テスト用)

# 付与するエフェクトのデータを保存
    #$data modify storage common: EffectData.effects set value [{type:$(type),operation:$(operation),amount:$(amount),name:$(name),stack:$(stack),duration:$(duration)}]
    data modify storage common: EffectData.effects set from storage common: ApplyEffects

# エンティティIDを追加
    function common:effect/add/id

# ステータスを更新
    function common:effect/remove/attribute/update

# ストレージ削除
    #data remove storage common: ApplyEffects
