#> player:display/effect/add
# プレイヤーの画面に表示するエフェクトを追加するコマンド

# 表示するアイコンがなければエフェクトを削除
    execute unless data storage player: DisplayEffectsBuf[-1].display.actionbar run return run function player:display/effect/remove with storage player: DisplayEffectsBuf[-1]

# 表示するアイコンを取得
    data modify storage player: DisplayEffects append from storage player: DisplayEffectsBuf[-1].display.actionbar

# 同じ名前のエフェクトのスタック数を取得
    $execute store result storage player: EffectCount int 1 if data storage player: DisplayEffectsBuf[{name:$(name)}]
    data modify storage player: EffectStack[].text set string storage player: EffectCount
    data modify storage player: DisplayEffects append from storage player: EffectStack[]

# ステータス表示がずれないように表示位置を調整
    data modify storage player: NegativeSpace prepend value {text:"\uF004\uF002",font:"lib:space"}

# エフェクト削除
    function player:display/effect/remove with storage player: DisplayEffectsBuf[-1]
