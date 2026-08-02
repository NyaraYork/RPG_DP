#> player:display/effect/remove
# プレイヤーの画面に表示するエフェクトを削除するコマンド

# 同じ名前のエフェクトを削除
    $data remove storage player: DisplayEffectsBuf[{name:$(name)}]

# 表示するエフェクトがなくなるまで再帰
    function player:display/effect/add with storage player: DisplayEffectsBuf[-1]
