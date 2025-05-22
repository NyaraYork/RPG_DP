#> common:effect/add/.data
# 付与するエフェクトのデータを追加するコマンド(テスト用)

# 付与するエフェクトのデータを保存
    $data modify storage common: EffectData.effects set value [{type:$(type),operation:$(operation),amount:$(amount),duration:$(duration)}]

# エンティティIDを追加
    function common:effect/add/id

# プレイヤーとそれ以外でステータス更新処理を分ける
    function common:effect/remove/is_player
