#> lib:motion/rotation/set
# エンティティのモーションの向きを設定するコマンド

# モーションの向きを設定
    tag @s add owner
    execute as @e[type=marker,tag=RotationMarker] if score @s OwnerID = @n[tag=owner] EntityID at @s run function lib:motion/rotation/marker/store
    tag @s remove owner
