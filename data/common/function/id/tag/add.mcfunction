#> common:id/tag/add
# IDを2進数に変換してタグを付与するコマンド

# IDを取得
    execute store result score @s EntityID run function common:id/value/get

# IDを2進数に変換しタグを付与
    scoreboard players operation #RemoveID Temp = @s EntityID

    execute unless score #RemoveID Temp matches ..-1 run tag @s add Bit32_0
    execute if score #RemoveID Temp matches ..-1 run tag @s add Bit32_1
    execute if score #RemoveID Temp matches ..-1 run scoreboard players operation #RemoveID Temp -= #-2147483648 Const

    execute unless score #RemoveID Temp matches 1073741824.. run tag @s add Bit31_0
    execute if score #RemoveID Temp matches 1073741824.. run tag @s add Bit31_1
    execute if score #RemoveID Temp matches 1073741824.. run scoreboard players remove #RemoveID Temp 1073741824

    execute unless score #RemoveID Temp matches 536870912.. run tag @s add Bit30_0
    execute if score #RemoveID Temp matches 536870912.. run tag @s add Bit30_1
    execute if score #RemoveID Temp matches 536870912.. run scoreboard players remove #RemoveID Temp 536870912

    execute unless score #RemoveID Temp matches 268435456.. run tag @s add Bit29_0
    execute if score #RemoveID Temp matches 268435456.. run tag @s add Bit29_1
    execute if score #RemoveID Temp matches 268435456.. run scoreboard players remove #RemoveID Temp 268435456

    execute unless score #RemoveID Temp matches 134217728.. run tag @s add Bit28_0
    execute if score #RemoveID Temp matches 134217728.. run tag @s add Bit28_1
    execute if score #RemoveID Temp matches 134217728.. run scoreboard players remove #RemoveID Temp 134217728

    execute unless score #RemoveID Temp matches 67108864.. run tag @s add Bit27_0
    execute if score #RemoveID Temp matches 67108864.. run tag @s add Bit27_1
    execute if score #RemoveID Temp matches 67108864.. run scoreboard players remove #RemoveID Temp 67108864

    execute unless score #RemoveID Temp matches 33554432.. run tag @s add Bit26_0
    execute if score #RemoveID Temp matches 33554432.. run tag @s add Bit26_1
    execute if score #RemoveID Temp matches 33554432.. run scoreboard players remove #RemoveID Temp 33554432

    execute unless score #RemoveID Temp matches 16777216.. run tag @s add Bit25_0
    execute if score #RemoveID Temp matches 16777216.. run tag @s add Bit25_1
    execute if score #RemoveID Temp matches 16777216.. run scoreboard players remove #RemoveID Temp 16777216

    execute unless score #RemoveID Temp matches 8388608.. run tag @s add Bit24_0
    execute if score #RemoveID Temp matches 8388608.. run tag @s add Bit24_1
    execute if score #RemoveID Temp matches 8388608.. run scoreboard players remove #RemoveID Temp 8388608

    execute unless score #RemoveID Temp matches 4194304.. run tag @s add Bit23_0
    execute if score #RemoveID Temp matches 4194304.. run tag @s add Bit23_1
    execute if score #RemoveID Temp matches 4194304.. run scoreboard players remove #RemoveID Temp 4194304

    execute unless score #RemoveID Temp matches 2097152.. run tag @s add Bit22_0
    execute if score #RemoveID Temp matches 2097152.. run tag @s add Bit22_1
    execute if score #RemoveID Temp matches 2097152.. run scoreboard players remove #RemoveID Temp 2097152

    execute unless score #RemoveID Temp matches 1048576.. run tag @s add Bit21_0
    execute if score #RemoveID Temp matches 1048576.. run tag @s add Bit21_1
    execute if score #RemoveID Temp matches 1048576.. run scoreboard players remove #RemoveID Temp 1048576

    execute unless score #RemoveID Temp matches 524288.. run tag @s add Bit20_0
    execute if score #RemoveID Temp matches 524288.. run tag @s add Bit20_1
    execute if score #RemoveID Temp matches 524288.. run scoreboard players remove #RemoveID Temp 524288

    execute unless score #RemoveID Temp matches 262144.. run tag @s add Bit19_0
    execute if score #RemoveID Temp matches 262144.. run tag @s add Bit19_1
    execute if score #RemoveID Temp matches 262144.. run scoreboard players remove #RemoveID Temp 262144

    execute unless score #RemoveID Temp matches 131072.. run tag @s add Bit18_0
    execute if score #RemoveID Temp matches 131072.. run tag @s add Bit18_1
    execute if score #RemoveID Temp matches 131072.. run scoreboard players remove #RemoveID Temp 131072

    execute unless score #RemoveID Temp matches 65536.. run tag @s add Bit17_0
    execute if score #RemoveID Temp matches 65536.. run tag @s add Bit17_1
    execute if score #RemoveID Temp matches 65536.. run scoreboard players remove #RemoveID Temp 65536

    execute unless score #RemoveID Temp matches 32768.. run tag @s add Bit16_0
    execute if score #RemoveID Temp matches 32768.. run tag @s add Bit16_1
    execute if score #RemoveID Temp matches 32768.. run scoreboard players remove #RemoveID Temp 32768

    execute unless score #RemoveID Temp matches 16384.. run tag @s add Bit15_0
    execute if score #RemoveID Temp matches 16384.. run tag @s add Bit15_1
    execute if score #RemoveID Temp matches 16384.. run scoreboard players remove #RemoveID Temp 16384

    execute unless score #RemoveID Temp matches 8192.. run tag @s add Bit14_0
    execute if score #RemoveID Temp matches 8192.. run tag @s add Bit14_1
    execute if score #RemoveID Temp matches 8192.. run scoreboard players remove #RemoveID Temp 8192

    execute unless score #RemoveID Temp matches 4096.. run tag @s add Bit13_0
    execute if score #RemoveID Temp matches 4096.. run tag @s add Bit13_1
    execute if score #RemoveID Temp matches 4096.. run scoreboard players remove #RemoveID Temp 4096

    execute unless score #RemoveID Temp matches 2048.. run tag @s add Bit12_0
    execute if score #RemoveID Temp matches 2048.. run tag @s add Bit12_1
    execute if score #RemoveID Temp matches 2048.. run scoreboard players remove #RemoveID Temp 2048

    execute unless score #RemoveID Temp matches 1024.. run tag @s add Bit11_0
    execute if score #RemoveID Temp matches 1024.. run tag @s add Bit11_1
    execute if score #RemoveID Temp matches 1024.. run scoreboard players remove #RemoveID Temp 1024

    execute unless score #RemoveID Temp matches 512.. run tag @s add Bit10_0
    execute if score #RemoveID Temp matches 512.. run tag @s add Bit10_1
    execute if score #RemoveID Temp matches 512.. run scoreboard players remove #RemoveID Temp 512

    execute unless score #RemoveID Temp matches 256.. run tag @s add Bit09_0
    execute if score #RemoveID Temp matches 256.. run tag @s add Bit09_1
    execute if score #RemoveID Temp matches 256.. run scoreboard players remove #RemoveID Temp 256

    execute unless score #RemoveID Temp matches 128.. run tag @s add Bit08_0
    execute if score #RemoveID Temp matches 128.. run tag @s add Bit08_1
    execute if score #RemoveID Temp matches 128.. run scoreboard players remove #RemoveID Temp 128

    execute unless score #RemoveID Temp matches 64.. run tag @s add Bit07_0
    execute if score #RemoveID Temp matches 64.. run tag @s add Bit07_1
    execute if score #RemoveID Temp matches 64.. run scoreboard players remove #RemoveID Temp 64

    execute unless score #RemoveID Temp matches 32.. run tag @s add Bit06_0
    execute if score #RemoveID Temp matches 32.. run tag @s add Bit06_1
    execute if score #RemoveID Temp matches 32.. run scoreboard players remove #RemoveID Temp 32

    execute unless score #RemoveID Temp matches 16.. run tag @s add Bit05_0
    execute if score #RemoveID Temp matches 16.. run tag @s add Bit05_1
    execute if score #RemoveID Temp matches 16.. run scoreboard players remove #RemoveID Temp 16

    execute unless score #RemoveID Temp matches 8.. run tag @s add Bit04_0
    execute if score #RemoveID Temp matches 8.. run tag @s add Bit04_1
    execute if score #RemoveID Temp matches 8.. run scoreboard players remove #RemoveID Temp 8

    execute unless score #RemoveID Temp matches 4.. run tag @s add Bit03_0
    execute if score #RemoveID Temp matches 4.. run tag @s add Bit03_1
    execute if score #RemoveID Temp matches 4.. run scoreboard players remove #RemoveID Temp 4

    execute unless score #RemoveID Temp matches 2.. run tag @s add Bit02_0
    execute if score #RemoveID Temp matches 2.. run tag @s add Bit02_1
    execute if score #RemoveID Temp matches 2.. run scoreboard players remove #RemoveID Temp 2

    execute unless score #RemoveID Temp matches 1.. run tag @s add Bit01_0
    execute if score #RemoveID Temp matches 1.. run tag @s add Bit01_1

# スコアリセット
    scoreboard players reset #RemoveID Temp
