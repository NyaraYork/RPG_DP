#> lib:motion/set
# モーションを設定するコマンド

# モーションの向きを保存するマーカーを召喚
    scoreboard players operation #OwnerID Temp = @s EntityID
    execute summon marker run function lib:motion/rotation/marker/set

# モーションを適用
    execute store result storage lib: motion.magnitude int 1 run scoreboard players operation #MotionMagnitude Temp < #255 Const
    function lib:motion/apply with storage lib: motion
    stopsound @a * entity.horse.saddle

# リセット
    scoreboard players reset #MotionMagnitude Temp
    scoreboard players reset #OwnerID Temp
    data remove storage lib: motion
