#> common:id/init
# エンティティにIDとそのビットタグを付与するコマンド
    #declare score_holder #Bit01
    #declare score_holder #Bit02
    #declare score_holder #Bit03
    #declare score_holder #Bit04
    #declare score_holder #Bit05
    #declare score_holder #Bit06
    #declare score_holder #Bit07
    #declare score_holder #Bit08
    #declare score_holder #Bit09
    #declare score_holder #Bit10
    #declare score_holder #Bit11
    #declare score_holder #Bit12
    #declare score_holder #Bit13
    #declare score_holder #Bit14
    #declare score_holder #Bit15
    #declare score_holder #Bit16
    #declare score_holder #Bit17
    #declare score_holder #Bit18
    #declare score_holder #Bit19
    #declare score_holder #Bit20
    #declare score_holder #Bit21
    #declare score_holder #Bit22
    #declare score_holder #Bit23
    #declare score_holder #Bit24
    #declare score_holder #Bit25
    #declare score_holder #Bit26
    #declare score_holder #Bit27
    #declare score_holder #Bit28
    #declare score_holder #Bit29
    #declare score_holder #Bit30
    #declare score_holder #Bit31
    #declare score_holder #Bit32

# IDを取得
    execute store result score @s EntityID run function common:id/get

# 取得したIDをビット化
    scoreboard players operation #Bit01 Temp = @s EntityID
    execute store success score #Bit32 Temp if score #Bit01 Temp matches ..-1 run scoreboard players operation #Bit01 Temp -= #-2147483648 Const

    scoreboard players operation #Bit02 Temp = #Bit01 Temp
    scoreboard players operation #Bit01 Temp %= #2 Const
    scoreboard players operation #Bit02 Temp /= #2 Const

    scoreboard players operation #Bit03 Temp = #Bit02 Temp
    scoreboard players operation #Bit02 Temp %= #2 Const
    scoreboard players operation #Bit03 Temp /= #2 Const

    scoreboard players operation #Bit04 Temp = #Bit03 Temp
    scoreboard players operation #Bit03 Temp %= #2 Const
    scoreboard players operation #Bit04 Temp /= #2 Const

    scoreboard players operation #Bit05 Temp = #Bit04 Temp
    scoreboard players operation #Bit04 Temp %= #2 Const
    scoreboard players operation #Bit05 Temp /= #2 Const

    scoreboard players operation #Bit06 Temp = #Bit05 Temp
    scoreboard players operation #Bit05 Temp %= #2 Const
    scoreboard players operation #Bit06 Temp /= #2 Const

    scoreboard players operation #Bit07 Temp = #Bit06 Temp
    scoreboard players operation #Bit06 Temp %= #2 Const
    scoreboard players operation #Bit07 Temp /= #2 Const

    scoreboard players operation #Bit08 Temp = #Bit07 Temp
    scoreboard players operation #Bit07 Temp %= #2 Const
    scoreboard players operation #Bit08 Temp /= #2 Const

    scoreboard players operation #Bit09 Temp = #Bit08 Temp
    scoreboard players operation #Bit08 Temp %= #2 Const
    scoreboard players operation #Bit09 Temp /= #2 Const

    scoreboard players operation #Bit10 Temp = #Bit09 Temp
    scoreboard players operation #Bit09 Temp %= #2 Const
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
    execute if score #Bit01 Temp matches 1 run tag @s add Bit01
    execute if score #Bit02 Temp matches 1 run tag @s add Bit02
    execute if score #Bit03 Temp matches 1 run tag @s add Bit03
    execute if score #Bit04 Temp matches 1 run tag @s add Bit04
    execute if score #Bit05 Temp matches 1 run tag @s add Bit05
    execute if score #Bit06 Temp matches 1 run tag @s add Bit06
    execute if score #Bit07 Temp matches 1 run tag @s add Bit07
    execute if score #Bit08 Temp matches 1 run tag @s add Bit08
    execute if score #Bit09 Temp matches 1 run tag @s add Bit09
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
    scoreboard players reset #Bit01 Temp
    scoreboard players reset #Bit02 Temp
    scoreboard players reset #Bit03 Temp
    scoreboard players reset #Bit04 Temp
    scoreboard players reset #Bit05 Temp
    scoreboard players reset #Bit06 Temp
    scoreboard players reset #Bit07 Temp
    scoreboard players reset #Bit08 Temp
    scoreboard players reset #Bit09 Temp
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
