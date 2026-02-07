#> lib:motion/rotation/restore
# 保存したエンティティの向きを適用するコマンド

# 保存したエンティティの向きを適用
    tag @s add owner
    execute as @e[type=marker,tag=RotationMarker] if score @s OwnerID = @n[tag=owner] EntityID run function lib:motion/rotation/marker/restore
    tag @s remove owner

# リセット
    scoreboard players reset @s MotionMagnitude
    item replace entity @s saddle with air
