#> player:display/attribute/mp/bar/update
# プレイヤーのMP表示を更新するコマンド

# カウントがMP割合以上の場合空のアイコンにする
    execute if score #Count Temp >= #MPRatio Temp run data modify storage player: MPChar set value "\uE000"

# カウントを2進める
    scoreboard players add #Count Temp 2

# 満タンなアイコンかつカウントがMP割合より大きい場合半分のアイコンにする
    execute if data storage player: {MPChar:"\uE002"} if score #Count Temp > #MPRatio Temp run data modify storage player: MPChar set value "\uE001"

# アイコンをMPバーに追加
    data modify storage player: MPBar prepend from storage player: MPChar

# カウントが20になるまで再帰
    execute if score #Count Temp matches ..19 run function player:display/attribute/mp/bar/update
