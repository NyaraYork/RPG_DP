#> lib:motion/rotation/marker/store
# マーカーにエンティティの向きを保存するコマンド

# エンティティにモーションの向きを設定
    execute at @s run rotate @n[tag=owner] ~ ~

# エンティティの向きを保存
    rotate @s ~ ~
