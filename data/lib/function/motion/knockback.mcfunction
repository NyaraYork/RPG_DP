#> lib:motion/knockback
# ノックバック処理をするコマンド

# 向きを保存するマーカーを召喚
    execute rotated ~ -47.685 summon marker run function lib:motion/rotation/marker/set

# ノックバック
    $item replace entity @s saddle with saddle[enchantments={"lib:motion/knockback":$(magnitude)}]
