#> spawner:spawn/mob/spread
# 召喚するモブの座標をずらすコマンド

# 座標をずらして召喚
    $clone from minecraft:overworld $(SpawnPosX) ~-$(SpawnRange) $(SpawnPosZ) $(SpawnPosX) ~$(SpawnRange) $(SpawnPosZ) to lib:debug -10 ~-$(SpawnRange) -10
    $execute in lib:debug positioned -10 ~ -10 positioned over ocean_floor in minecraft:overworld positioned $(SpawnPosX).5 ~ $(SpawnPosZ).5 run function asset:mob/$(ID)/spawn

# 複製したブロックは消去
    $execute in lib:debug run fill -10 ~-$(SpawnRange) -10 -10 ~$(SpawnRange) -10 air
