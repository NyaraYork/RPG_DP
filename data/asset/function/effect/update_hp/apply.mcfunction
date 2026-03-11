#> asset:effect/update_hp/apply
# 指定ティック後に最大HPをHPバーに反映するコマンド

# durationが0になったら最大HPをHPバーに反映
    execute if score #Duration Temp matches 0 run attribute @s max_health base set 20
