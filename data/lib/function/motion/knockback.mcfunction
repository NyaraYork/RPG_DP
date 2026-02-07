#> lib:motion/knockback
# ノックバック処理をするコマンド

# 向きを保存するマーカーを召喚
    scoreboard players operation #OwnerID Temp = @s EntityID
    execute rotated ~ -47.685 summon marker run function lib:motion/rotation/marker/set

# ノックバック
    data modify storage lib: motion.type set value "knockback"
    execute store result storage lib: motion.magnitude int 1 run scoreboard players get @s MotionMagnitude
    function lib:motion/apply with storage lib: motion

# リセット
    scoreboard players reset #OwnerID Temp
    data remove storage lib: motion
