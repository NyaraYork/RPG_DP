#> player:display/effect/get
# プレイヤーの画面に表示するエフェクトを取得するコマンド

# 表示するエフェクトを取得
    $data modify storage player: DisplayEffectsBuf prepend from storage common: effects[{owner:$(value)}]
    $data remove storage player: DisplayEffectsBuf[{target:{ID:[{value:$(value)}]}}]
    $data modify storage player: DisplayEffectsBuf prepend from storage common: effects[{target:{ID:[{value:$(value)}]}}]

# スタック数表示用のフォントを設定
    data modify storage player: EffectStack set value [{font:"player:display/effect/negative_space"},{font:"player:display/effect/stack"}]

# 表示するエフェクトを追加
    function player:display/effect/add with storage player: DisplayEffectsBuf[-1]

# ストレージ削除
    data remove storage player: DisplayEffectsBuf
    data remove storage player: EffectStack
    data remove storage player: EffectCount
