#> common:damage/attacker/tag/add
# 攻撃したエンティティにタグを付与するコマンド

# 攻撃したエンティティにタグを付与
    tag @s add attacker

# 攻撃したエンティティのIDを取得
    function common:damage/attacker/effect/id/get

# 攻撃されたエンティティをノックバックさせる
    execute as @e[tag=victim] run function lib:motion/apply {type:"knockback"}

# タグ削除
    tag @s remove attacker
    tag @e[tag=victim] remove victim
