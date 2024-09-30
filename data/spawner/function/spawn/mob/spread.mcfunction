#> spawner:spawn/mob/spread
# 召喚するモブの座標をずらすコマンド

# 座標をずらしてから召喚
    $clone from minecraft:overworld $(SpawnPosX) ~-$(SpawnRange) $(SpawnPosZ) $(SpawnPosX) ~$(SpawnRange) $(SpawnPosZ) to common:debug 0 ~-$(SpawnRange) 0
    $execute in common:debug positioned 0 ~ 0 positioned over ocean_floor in minecraft:overworld positioned $(SpawnPosX).5 ~ $(SpawnPosZ).5 run function spawner:spawn/mob/summon

# 複製したブロックは消去
    $execute in common:debug run fill 0 ~-$(SpawnRange) 0 0 ~$(SpawnRange) 0 air
