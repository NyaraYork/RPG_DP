#> lib:motion/rotation/marker/store
# マーカーにエンティティの向きを保存するコマンド

# エンティティの向きを保存
    execute at @n[tag=owner] run rotate @s ~ ~

# エンティティにモーションの向きを設定
    rotate @n[tag=owner] ~ ~
