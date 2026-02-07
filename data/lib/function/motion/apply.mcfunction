#> lib:motion/apply
# モーションを適用するコマンド

# モーションを適用するエンティティのIDを取得
    scoreboard players operation #OwnerID Temp = @s EntityID

# モーションを適用
    execute store result storage lib: motion.magnitude int 1 run scoreboard players get @s MotionMagnitude
    $function lib:motion/$(type) with storage lib: motion
    stopsound @a hostile entity.horse.saddle

# リセット
    scoreboard players reset #OwnerID Temp
    data remove storage lib: motion
