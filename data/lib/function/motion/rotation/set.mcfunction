#> lib:motion/rotation/set
# エンティティのモーションの向きを設定するコマンド

# エンティティの向きを保存
    data modify storage lib: rotation set from entity @s Rotation

# モーションの向きを設定
    tag @s add owner
    execute as @e[type=marker,tag=RotationMarker] if score @s OwnerID = @n[tag=owner] EntityID at @s run rotate @n[tag=owner] ~ ~
