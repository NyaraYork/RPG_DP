#> common:init/id/tag
# エンティティにIDとそのビットタグを付与するコマンド

# IDを取得
    execute store result score @s EntityID run function common:init/id/number

# 取得したIDをビット化
    scoreboard players operation #Bit1 Temp = @s EntityID
    execute if score #Bit1 Temp matches ..-1 store success score #Bit32 Temp run scoreboard players operation #Bit1 Temp -= #-2147483648 Const

    scoreboard players operation #Bit2 Temp = #Bit1 Temp
    scoreboard players operation #Bit1 Temp %= #2 Const
    scoreboard players operation #Bit2 Temp /= #2 Const

    scoreboard players operation #Bit3 Temp = #Bit2 Temp
    scoreboard players operation #Bit2 Temp %= #2 Const
    scoreboard players operation #Bit3 Temp /= #2 Const

    scoreboard players operation #Bit4 Temp = #Bit3 Temp
    scoreboard players operation #Bit3 Temp %= #2 Const
    scoreboard players operation #Bit4 Temp /= #2 Const

    scoreboard players operation #Bit5 Temp = #Bit4 Temp
    scoreboard players operation #Bit4 Temp %= #2 Const
    scoreboard players operation #Bit5 Temp /= #2 Const

    scoreboard players operation #Bit6 Temp = #Bit5 Temp
    scoreboard players operation #Bit5 Temp %= #2 Const
    scoreboard players operation #Bit6 Temp /= #2 Const

    scoreboard players operation #Bit7 Temp = #Bit6 Temp
    scoreboard players operation #Bit6 Temp %= #2 Const
    scoreboard players operation #Bit7 Temp /= #2 Const

    scoreboard players operation #Bit8 Temp = #Bit7 Temp
    scoreboard players operation #Bit7 Temp %= #2 Const
    scoreboard players operation #Bit8 Temp /= #2 Const

    scoreboard players operation #Bit9 Temp = #Bit8 Temp
    scoreboard players operation #Bit8 Temp %= #2 Const
    scoreboard players operation #Bit9 Temp /= #2 Const

    scoreboard players operation #Bit10 Temp = #Bit9 Temp
    scoreboard players operation #Bit9 Temp %= #2 Const
    scoreboard players operation #Bit10 Temp /= #2 Const

    scoreboard players operation #Bit11 Temp = #Bit10 Temp
    scoreboard players operation #Bit10 Temp %= #2 Const
    scoreboard players operation #Bit11 Temp /= #2 Const

    scoreboard players operation #Bit12 Temp = #Bit11 Temp
    scoreboard players operation #Bit11 Temp %= #2 Const
    scoreboard players operation #Bit12 Temp /= #2 Const

    scoreboard players operation #Bit13 Temp = #Bit12 Temp
    scoreboard players operation #Bit12 Temp %= #2 Const
    scoreboard players operation #Bit13 Temp /= #2 Const

    scoreboard players operation #Bit14 Temp = #Bit13 Temp
    scoreboard players operation #Bit13 Temp %= #2 Const
    scoreboard players operation #Bit14 Temp /= #2 Const

    scoreboard players operation #Bit15 Temp = #Bit14 Temp
    scoreboard players operation #Bit14 Temp %= #2 Const
    scoreboard players operation #Bit15 Temp /= #2 Const

    scoreboard players operation #Bit16 Temp = #Bit15 Temp
    scoreboard players operation #Bit15 Temp %= #2 Const
    scoreboard players operation #Bit16 Temp /= #2 Const

    scoreboard players operation #Bit17 Temp = #Bit16 Temp
    scoreboard players operation #Bit16 Temp %= #2 Const
    scoreboard players operation #Bit17 Temp /= #2 Const

    scoreboard players operation #Bit18 Temp = #Bit17 Temp
    scoreboard players operation #Bit17 Temp %= #2 Const
    scoreboard players operation #Bit18 Temp /= #2 Const

    scoreboard players operation #Bit19 Temp = #Bit18 Temp
    scoreboard players operation #Bit18 Temp %= #2 Const
    scoreboard players operation #Bit19 Temp /= #2 Const

    scoreboard players operation #Bit20 Temp = #Bit19 Temp
    scoreboard players operation #Bit19 Temp %= #2 Const
    scoreboard players operation #Bit20 Temp /= #2 Const

    scoreboard players operation #Bit21 Temp = #Bit20 Temp
    scoreboard players operation #Bit20 Temp %= #2 Const
    scoreboard players operation #Bit21 Temp /= #2 Const

    scoreboard players operation #Bit22 Temp = #Bit21 Temp
    scoreboard players operation #Bit21 Temp %= #2 Const
    scoreboard players operation #Bit22 Temp /= #2 Const

    scoreboard players operation #Bit23 Temp = #Bit22 Temp
    scoreboard players operation #Bit22 Temp %= #2 Const
    scoreboard players operation #Bit23 Temp /= #2 Const

    scoreboard players operation #Bit24 Temp = #Bit23 Temp
    scoreboard players operation #Bit23 Temp %= #2 Const
    scoreboard players operation #Bit24 Temp /= #2 Const

    scoreboard players operation #Bit25 Temp = #Bit24 Temp
    scoreboard players operation #Bit24 Temp %= #2 Const
    scoreboard players operation #Bit25 Temp /= #2 Const

    scoreboard players operation #Bit26 Temp = #Bit25 Temp
    scoreboard players operation #Bit25 Temp %= #2 Const
    scoreboard players operation #Bit26 Temp /= #2 Const

    scoreboard players operation #Bit27 Temp = #Bit26 Temp
    scoreboard players operation #Bit26 Temp %= #2 Const
    scoreboard players operation #Bit27 Temp /= #2 Const

    scoreboard players operation #Bit28 Temp = #Bit27 Temp
    scoreboard players operation #Bit27 Temp %= #2 Const
    scoreboard players operation #Bit28 Temp /= #2 Const

    scoreboard players operation #Bit29 Temp = #Bit28 Temp
    scoreboard players operation #Bit28 Temp %= #2 Const
    scoreboard players operation #Bit29 Temp /= #2 Const

    scoreboard players operation #Bit30 Temp = #Bit29 Temp
    scoreboard players operation #Bit29 Temp %= #2 Const
    scoreboard players operation #Bit30 Temp /= #2 Const

    scoreboard players operation #Bit31 Temp = #Bit30 Temp
    scoreboard players operation #Bit30 Temp %= #2 Const
    scoreboard players operation #Bit31 Temp /= #2 Const

# ビット化したIDをもとにタグ付与
    execute if score #Bit1 Temp matches 1 run tag @s add Bit1
    execute if score #Bit2 Temp matches 1 run tag @s add Bit2
    execute if score #Bit3 Temp matches 1 run tag @s add Bit3
    execute if score #Bit4 Temp matches 1 run tag @s add Bit4
    execute if score #Bit5 Temp matches 1 run tag @s add Bit5
    execute if score #Bit6 Temp matches 1 run tag @s add Bit6
    execute if score #Bit7 Temp matches 1 run tag @s add Bit7
    execute if score #Bit8 Temp matches 1 run tag @s add Bit8
    execute if score #Bit9 Temp matches 1 run tag @s add Bit9
    execute if score #Bit10 Temp matches 1 run tag @s add Bit10
    execute if score #Bit11 Temp matches 1 run tag @s add Bit11
    execute if score #Bit12 Temp matches 1 run tag @s add Bit12
    execute if score #Bit13 Temp matches 1 run tag @s add Bit13
    execute if score #Bit14 Temp matches 1 run tag @s add Bit14
    execute if score #Bit15 Temp matches 1 run tag @s add Bit15
    execute if score #Bit16 Temp matches 1 run tag @s add Bit16
    execute if score #Bit17 Temp matches 1 run tag @s add Bit17
    execute if score #Bit18 Temp matches 1 run tag @s add Bit18
    execute if score #Bit19 Temp matches 1 run tag @s add Bit19
    execute if score #Bit20 Temp matches 1 run tag @s add Bit20
    execute if score #Bit21 Temp matches 1 run tag @s add Bit21
    execute if score #Bit22 Temp matches 1 run tag @s add Bit22
    execute if score #Bit23 Temp matches 1 run tag @s add Bit23
    execute if score #Bit24 Temp matches 1 run tag @s add Bit24
    execute if score #Bit25 Temp matches 1 run tag @s add Bit25
    execute if score #Bit26 Temp matches 1 run tag @s add Bit26
    execute if score #Bit27 Temp matches 1 run tag @s add Bit27
    execute if score #Bit28 Temp matches 1 run tag @s add Bit28
    execute if score #Bit29 Temp matches 1 run tag @s add Bit29
    execute if score #Bit30 Temp matches 1 run tag @s add Bit30
    execute if score #Bit31 Temp matches 1 run tag @s add Bit31
    execute if score #Bit32 Temp matches 1 run tag @s add Bit32

# スコアリセット
    scoreboard players reset #Bit1 Temp
    scoreboard players reset #Bit2 Temp
    scoreboard players reset #Bit3 Temp
    scoreboard players reset #Bit4 Temp
    scoreboard players reset #Bit5 Temp
    scoreboard players reset #Bit6 Temp
    scoreboard players reset #Bit7 Temp
    scoreboard players reset #Bit8 Temp
    scoreboard players reset #Bit9 Temp
    scoreboard players reset #Bit10 Temp
    scoreboard players reset #Bit11 Temp
    scoreboard players reset #Bit12 Temp
    scoreboard players reset #Bit13 Temp
    scoreboard players reset #Bit14 Temp
    scoreboard players reset #Bit15 Temp
    scoreboard players reset #Bit16 Temp
    scoreboard players reset #Bit17 Temp
    scoreboard players reset #Bit18 Temp
    scoreboard players reset #Bit19 Temp
    scoreboard players reset #Bit20 Temp
    scoreboard players reset #Bit21 Temp
    scoreboard players reset #Bit22 Temp
    scoreboard players reset #Bit23 Temp
    scoreboard players reset #Bit24 Temp
    scoreboard players reset #Bit25 Temp
    scoreboard players reset #Bit26 Temp
    scoreboard players reset #Bit27 Temp
    scoreboard players reset #Bit28 Temp
    scoreboard players reset #Bit29 Temp
    scoreboard players reset #Bit30 Temp
    scoreboard players reset #Bit31 Temp
    scoreboard players reset #Bit32 Temp
