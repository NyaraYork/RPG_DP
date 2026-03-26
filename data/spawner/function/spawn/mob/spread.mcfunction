#> spawner:spawn/mob/spread
# 召喚するモブの座標をずらすコマンド

# 座標をずらして召喚
    $clone from minecraft:overworld $(SpawnPosX) ~-$(SpawnRange) $(SpawnPosZ) $(SpawnPosX) ~$(SpawnRange) $(SpawnPosZ) to lib:void 0 ~-$(SpawnRange) 0
    $execute in lib:void positioned 0 ~ 0 positioned over ocean_floor in minecraft:overworld positioned $(SpawnPosX) ~ $(SpawnPosZ) run function asset:mob/$(ID)/summon

# 複製したブロックは消去
    $execute in lib:void run fill 0 ~-$(SpawnRange) 0 0 ~$(SpawnRange) 0 air
