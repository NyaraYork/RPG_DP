#> asset:effect/.delay/restore_hp/apply
# プレイヤーのHPバーを元に戻すコマンド

# Durationが0になったらHPバーを元に戻す
    execute if score #Duration Temp matches 0 run attribute @s max_health base set 20
