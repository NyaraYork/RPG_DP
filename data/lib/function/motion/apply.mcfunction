#> lib:motion/apply
# モーションを適用するコマンド

# モーションを適用
    $item replace entity @s saddle with saddle[enchantments={"lib:motion/$(type)":$(magnitude)}]

# サウンド停止
    stopsound @a hostile entity.horse.saddle
