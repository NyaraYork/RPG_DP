#> asset:effect/resistance/apply
# 指定ティック後にダメージ耐性を付与するコマンド

# durationが0になったらダメージ耐性を付与
    execute if score #Duration Temp matches 0 run effect give @s minecraft:resistance infinite 255 true
