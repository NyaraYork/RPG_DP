#> lib:motion/rotation/marker/restore
# マーカーに保存したエンティティの向きを適用するコマンド

# 保存したエンティティの向きを適用
    data modify entity @s Rotation set from storage lib: rotation

# エンティティの向きを元に戻す
    execute at @s run rotate @n[tag=owner] ~ ~

# マーカーを消去
    kill @s
