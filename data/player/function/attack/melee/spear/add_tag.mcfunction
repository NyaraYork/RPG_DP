#> player:attack/melee/spear/add_tag
# 槍で近接攻撃されたエンティティにタグを付与するコマンド

# 槍で近接攻撃されたエンティティにタグを付与
    execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,tag=!attacker,scores={EntityID=-2147483648..2147483647}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run tag @s add victim

# リーチの限界まで再帰
    execute positioned ^ ^ ^0.5 if entity @s[distance=..5] run function player:attack/melee/spear/add_tag
