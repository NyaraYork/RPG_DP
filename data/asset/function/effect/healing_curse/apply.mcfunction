#> asset:effect/healing_curse/apply
# 回復の呪いに常時実行するコマンド

# 付与対象を設定
    function asset:effect/attribute/apply

# Durationが0になったらダメージを与える
    execute if score #Duration Temp matches 0 run function asset:effect/healing_curse/damage
