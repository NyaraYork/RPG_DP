#> lib:motion/rotation/restore
# エンティティの向きを元に戻すコマンド

# エンティティの向きを元に戻す
    execute as @e[type=marker,tag=RotationMarker] if score @s OwnerID = @n[tag=owner] EntityID run function lib:motion/rotation/marker/restore

# リセット
    scoreboard players reset @s MotionMagnitude
    item replace entity @s saddle with air
    data remove storage lib: rotation
    tag @s remove owner
