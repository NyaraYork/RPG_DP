#> common:damage/attacker/tag/add
# 攻撃したエンティティにタグを付与するコマンド

# 攻撃したエンティティにタグを付与
    tag @s add attacker

# 攻撃したエンティティのIDを取得
    data modify storage lib: motion.type set value "knockback"
    execute rotated ~ -47.685 run function common:damage/attacker/effect/id/get

# リセット
    tag @s remove attacker
    data remove storage lib: motion
