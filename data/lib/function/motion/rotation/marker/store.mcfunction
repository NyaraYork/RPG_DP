#> lib:motion/rotation/marker/store
# エンティティの向きをマーカーに保存するコマンド

# エンティティの向きを保存
    data modify entity @s data.rotation set from entity @n[tag=owner] Rotation

# モーションの向きを設定
    rotate @n[tag=owner] ~ ~
