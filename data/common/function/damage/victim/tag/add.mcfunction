#> common:damage/victim/tag/add
# 攻撃されたエンティティにタグを付与するコマンド

# 攻撃されたエンティティにタグを付与
    tag @s add hurt
    execute as @e[scores={EntityID=-2147483648..2147483647}] if score @s EntityID = @n[tag=hurt] OwnerID run tag @s add victim

# タグ削除
    tag @s remove hurt
