#> player:display/effect/add
# プレイヤーの画面に表示するエフェクトを追加するコマンド

# 表示するアイコン(テキスト)を取得
    data modify storage player: DisplayEffects append from storage player: DisplayEffectsBuf[-1].display.actionbar

# 同じ名前のエフェクトのスタック数を取得
    $execute store result storage player: EffectCount int 1 if data storage player: DisplayEffectsBuf[{name:$(name)}]
    data modify storage player: EffectStack[].text set string storage player: EffectCount
    execute if data storage player: DisplayEffectsBuf[-1].display.actionbar run data modify storage player: DisplayEffects append from storage player: EffectStack[]

# ステータス表示がずれないように表示位置を調整
    execute if data storage player: DisplayEffectsBuf[-1].display.actionbar run data modify storage player: NegativeSpace prepend value {text:"\uF004\uF002",font:"lib:space"}

# 同じ名前のエフェクトを削除
    $data remove storage player: DisplayEffectsBuf[{name:$(name)}]

# 表示するエフェクトがなくなるまで再帰
    function player:display/effect/add with storage player: DisplayEffectsBuf[-1]
