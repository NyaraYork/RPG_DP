#> lib:motion/rotation/marker/set
# マーカーにモーションの向きを設定するコマンド

# モーションを適用するエンティティのIDを保存
    scoreboard players operation @s OwnerID = #OwnerID Temp

# タグを付与
    tag @s add RotationMarker

# 向きを設定
    rotate @s ~ ~
