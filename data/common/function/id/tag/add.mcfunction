#> common:id/tag/add
# IDを2進数に変換してタグを付与するコマンド

# IDを取得
    execute store result score @s EntityID run function common:id/value/get

# IDを2進数に変換しタグを付与
    scoreboard players operation #RemoveID Temp = @s EntityID
    execute if score #RemoveID Temp matches 0 run tag @s add Bit00
    execute if score #RemoveID Temp matches ..-1 run tag @s add Bit32
    execute if score #RemoveID Temp matches ..-1 run scoreboard players operation #RemoveID Temp -= #-2147483648 Const
    execute if score #RemoveID Temp matches 1073741824.. run tag @s add Bit31
    execute if score #RemoveID Temp matches 1073741824.. run scoreboard players remove #RemoveID Temp 1073741824
    execute if score #RemoveID Temp matches 536870912.. run tag @s add Bit30
    execute if score #RemoveID Temp matches 536870912.. run scoreboard players remove #RemoveID Temp 536870912
    execute if score #RemoveID Temp matches 268435456.. run tag @s add Bit29
    execute if score #RemoveID Temp matches 268435456.. run scoreboard players remove #RemoveID Temp 268435456
    execute if score #RemoveID Temp matches 134217728.. run tag @s add Bit28
    execute if score #RemoveID Temp matches 134217728.. run scoreboard players remove #RemoveID Temp 134217728
    execute if score #RemoveID Temp matches 67108864.. run tag @s add Bit27
    execute if score #RemoveID Temp matches 67108864.. run scoreboard players remove #RemoveID Temp 67108864
    execute if score #RemoveID Temp matches 33554432.. run tag @s add Bit26
    execute if score #RemoveID Temp matches 33554432.. run scoreboard players remove #RemoveID Temp 33554432
    execute if score #RemoveID Temp matches 16777216.. run tag @s add Bit25
    execute if score #RemoveID Temp matches 16777216.. run scoreboard players remove #RemoveID Temp 16777216
    execute if score #RemoveID Temp matches 8388608.. run tag @s add Bit24
    execute if score #RemoveID Temp matches 8388608.. run scoreboard players remove #RemoveID Temp 8388608
    execute if score #RemoveID Temp matches 4194304.. run tag @s add Bit23
    execute if score #RemoveID Temp matches 4194304.. run scoreboard players remove #RemoveID Temp 4194304
    execute if score #RemoveID Temp matches 2097152.. run tag @s add Bit22
    execute if score #RemoveID Temp matches 2097152.. run scoreboard players remove #RemoveID Temp 2097152
    execute if score #RemoveID Temp matches 1048576.. run tag @s add Bit21
    execute if score #RemoveID Temp matches 1048576.. run scoreboard players remove #RemoveID Temp 1048576
    execute if score #RemoveID Temp matches 524288.. run tag @s add Bit20
    execute if score #RemoveID Temp matches 524288.. run scoreboard players remove #RemoveID Temp 524288
    execute if score #RemoveID Temp matches 262144.. run tag @s add Bit19
    execute if score #RemoveID Temp matches 262144.. run scoreboard players remove #RemoveID Temp 262144
    execute if score #RemoveID Temp matches 131072.. run tag @s add Bit18
    execute if score #RemoveID Temp matches 131072.. run scoreboard players remove #RemoveID Temp 131072
    execute if score #RemoveID Temp matches 65536.. run tag @s add Bit17
    execute if score #RemoveID Temp matches 65536.. run scoreboard players remove #RemoveID Temp 65536
    execute if score #RemoveID Temp matches 32768.. run tag @s add Bit16
    execute if score #RemoveID Temp matches 32768.. run scoreboard players remove #RemoveID Temp 32768
    execute if score #RemoveID Temp matches 16384.. run tag @s add Bit15
    execute if score #RemoveID Temp matches 16384.. run scoreboard players remove #RemoveID Temp 16384
    execute if score #RemoveID Temp matches 8192.. run tag @s add Bit14
    execute if score #RemoveID Temp matches 8192.. run scoreboard players remove #RemoveID Temp 8192
    execute if score #RemoveID Temp matches 4096.. run tag @s add Bit13
    execute if score #RemoveID Temp matches 4096.. run scoreboard players remove #RemoveID Temp 4096
    execute if score #RemoveID Temp matches 2048.. run tag @s add Bit12
    execute if score #RemoveID Temp matches 2048.. run scoreboard players remove #RemoveID Temp 2048
    execute if score #RemoveID Temp matches 1024.. run tag @s add Bit11
    execute if score #RemoveID Temp matches 1024.. run scoreboard players remove #RemoveID Temp 1024
    execute if score #RemoveID Temp matches 512.. run tag @s add Bit10
    execute if score #RemoveID Temp matches 512.. run scoreboard players remove #RemoveID Temp 512
    execute if score #RemoveID Temp matches 256.. run tag @s add Bit09
    execute if score #RemoveID Temp matches 256.. run scoreboard players remove #RemoveID Temp 256
    execute if score #RemoveID Temp matches 128.. run tag @s add Bit08
    execute if score #RemoveID Temp matches 128.. run scoreboard players remove #RemoveID Temp 128
    execute if score #RemoveID Temp matches 64.. run tag @s add Bit07
    execute if score #RemoveID Temp matches 64.. run scoreboard players remove #RemoveID Temp 64
    execute if score #RemoveID Temp matches 32.. run tag @s add Bit06
    execute if score #RemoveID Temp matches 32.. run scoreboard players remove #RemoveID Temp 32
    execute if score #RemoveID Temp matches 16.. run tag @s add Bit05
    execute if score #RemoveID Temp matches 16.. run scoreboard players remove #RemoveID Temp 16
    execute if score #RemoveID Temp matches 8.. run tag @s add Bit04
    execute if score #RemoveID Temp matches 8.. run scoreboard players remove #RemoveID Temp 8
    execute if score #RemoveID Temp matches 4.. run tag @s add Bit03
    execute if score #RemoveID Temp matches 4.. run scoreboard players remove #RemoveID Temp 4
    execute if score #RemoveID Temp matches 2.. run tag @s add Bit02
    execute if score #RemoveID Temp matches 2.. run scoreboard players remove #RemoveID Temp 2
    execute if score #RemoveID Temp matches 1.. run tag @s add Bit01

# スコアリセット
    scoreboard players reset #RemoveID Temp
